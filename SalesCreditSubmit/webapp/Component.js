sap.ui.define([
	"sap/ui/core/UIComponent",
	"sap/ui/model/json/JSONModel",
	"SalesCreditSubmit/model/models",
	"SalesCreditSubmit/model/ContextModel",
	"sap/m/MessageToast"
], function (UIComponent, JSONModel, models, ContextModel, MessageToast) {
	"use strict";

	return UIComponent.extend("SalesCreditSubmit.Component", {

		metadata: {
			manifest: "json"
		},

		appModel: {
			isBusy: false
		},

		/**
		 * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
		 * @public
		 * @override
		 */
		init: function () {
			var that = this;
			// call the base component's init function
			UIComponent.prototype.init.apply(this, arguments);

			// set the device model
			this.setModel(models.createDeviceModel(), "device");

			// set application model
			this.setModel(new JSONModel(this.appModel), "appModel");
			this.setModel(models.createLocalModel());
			this._JSONModel = this.getModel();
			that.getBlockDoc(that);

			// get task instance ID	and read the process context
			try {
				var taskId = this._getTaskId();

				var p = ContextModel.readContext(that, taskId);
				p.then(function (oContext) {
					// loading of context data was successfull

					// TODO Here you can add some initialization if necessary

					// adding that "data" model. data.ctx contains the context
					var oStartupParameters = that.getComponentData().startupParameters;
					// 获取Parameters
					var oQueryParameters = oStartupParameters.oParameters.oQueryParameters;
					var oTaskData = oStartupParameters.taskModel.getData();
					var oDataModel = new JSONModel({
						context: oContext,
						task: {
							description: "",
							title: oTaskData.TaskTitle,
							priority: oTaskData.Priority,
							priorityText: oTaskData.PriorityText,
							status: oTaskData.Status,
							statusText: oTaskData.StatusText,
							createdOn: oTaskData.CreatedOn,
							createdBy: oTaskData.CreatedBy
						},
						queryParameters: oQueryParameters
					});
					// Setting task description
					oStartupParameters.inboxAPI.getDescription("NA", taskId)
						.done(function (dataDescr) {
							oDataModel.setProperty("/task/description", dataDescr.Description);
						})
						.fail(function (errorText) {
							that._handleError.call(that, Error(errorText));
						});

					// set the model for binding
					that.setModel(oDataModel, "data");

					// add buttons to approve and reject
					// that._addAction("Approve", "GENERIC_COMPLETE_TITLE", "Accept", function (button) {
					// 	that._callbackAction(oDataModel, "confirm");
					// });

					// that._addAction("Reject", "GENERIC_REJECT_TITLE", "Reject", function (button) {
					// 	that._callbackAction(oDataModel, "Reject");
					// });
					// that._addAction("Approve", "GENERIC_COMPLETE_TITLE", "Accept", function (button) {
					// 	that._callbackAction(oDataModel, "confirm");
					// });
					// remove busy indicator
					that.setBusy(false);
				}, function (err) {
					that._handleError.call(that, err);
				});
			} catch (err) {
				that._handleError.call(that, err);
			}
		},
		getBlockDoc: function (that) {
			var language = sap.ui.getCore().getConfiguration().getLanguage();
			switch (language) {
			case "zh-Hant":
			case "zh-TW":
				language = "zh_CN_F";
				break;
			case "zh-Hans":
			case "zh-CN":
				language = "zh_CN";
				break;
			case "EN":
			case "en":
				language = "en_GB";
				break;
			default:
				break;
			}
			var oFilter1 = new sap.ui.model.Filter("SalesOrganization", sap.ui.model.FilterOperator.EQ, "6310");
			var oFilter2 = new sap.ui.model.Filter("PartnerFunction", sap.ui.model.FilterOperator.EQ, "VE");
			var oFilter3 = new sap.ui.model.Filter("Language", sap.ui.model.FilterOperator.EQ, language);
			var aFilters = [oFilter1, oFilter2, oFilter3];
			var mParameters = {
				filters: aFilters,
				success: function (oData) {
					var Arry = !oData ? [] : oData.results;
					if (Arry.length === 0) {
						MessageToast.show("未查詢到凍結交貨單");
					} else {
						that._JSONModel.setProperty("/DeliveryDocList", Arry);
					}
				}
			};
			that.getModel("BlockDoc").read("/YY1_SALESCREDIT", mParameters);
		},
		_callbackAction: function (oDataModel, action) {
			var that = this;
			var _checkAction = false;
			_checkAction = that._checkConfirmData(oDataModel.getData());
			// if (action === "confirm") {
			// 	_checkAction = that._checkConfirmData(oDataModel.getData());
			// } else {
			// 	_checkAction = that._checkRejectData(oDataModel.getData());
			// }
			if (_checkAction) {
				// var taskId = that.oComponentData.inboxHandle.attachmentHandle.detailModel.getData().InstanceID;
				// var p = ContextModel.triggerComplete(taskId, action, oDataModel.getData().context);
				// p.then(function () {
				// 	that._refreshTask.call(that);
				// }, function (err) {
				// 	that._handleError.call(that, err);
				// });
				that.completeWorkflowTasks(oDataModel, action);
			}
		},
		completeWorkflowTasks: function (oDataModel, action) {
			var that = this;
			var oData = oDataModel.getData();
			// 填写审批历史记录
			var currentLog = {
				"STARTCOMPANY": oData.context.COMPANYCODE,
				"FLOWID": oData.context.workflowDefinitionId,
				"INSTANCEID": oData.context.workflowInstanceId,
				"NODEID": oData.queryParameters.node[0],
				"SUBNODEID": oData.queryParameters.subnode[0],
				"TASKINSTANCEID": that._getTaskId(),
				// "SNUMBER": "0001",
				"DOCUMENT": oData.context.FLOW,
				"ACCOUNT": oData.context.APPLICANT,
				"JOB": "",
				"APPROVALDATE": new Date(),
				"CHANGEDATE": new Date(),
				"SUGGESTION": "同意",
				"RESULT": ""
			};
			oData.context.currentAction = action;
			// oData.context.approvalLogs.push(currentLog);

			// 返写日志记录至Cloud Foundry HANA
			that.postToCFHana(oData, currentLog).then(function (oSuccess) {
				var taskId = that.oComponentData.inboxHandle.attachmentHandle.detailModel.getData().InstanceID;
				var p = ContextModel.triggerComplete(taskId, action, oDataModel.getData().context);
				p.then(function () {
					that._refreshTask.call(that);
				}, function (err) {
					that._handleError.call(that, err);
				});
			}, function (oError) {
				MessageToast.show("回写HANA日志失败，请稍后再试");
			});
		},

		postToCFHana: function (oData, oLog) {
			var that = this;
			var promise = new Promise(function (resolve, reject) {
				that.createNodeHistory(that, oLog).then(function (oData) {
					// that.batchCreateMaterialHistoryItem(oData);
					// that.getModel().setProperty("/MaterialHead/ApplicteNum", oData.APPNUM);
					resolve(oData);
				}, function (oError) {
					reject(oError);
				});
			});
			return promise;
		},
		createNodeHistory: function (oController, oLog) {
			var promise = new Promise(function (resolve, reject) {
				var mParameter = {
					success: function (oData) {
						resolve(oData);
					},
					error: function (oError) {
						reject(oError);
					}
				};
				oController.getModel("WORKFLOWLOG").create("/WORKFLOWLOG", oLog, mParameter);
			});
			return promise;
		},

		/**
		 * 
		 */
		_handleError: function (err) {
			// to ensure busy indicator is off
			this.setBusy(false);

			// show a message box with the error
			jQuery.sap.require("sap.m.MessageBox");
			sap.m.MessageBox.error(err.toLocaleString(), {
				title: this.getModel("i18n").getResourceBundle().getText("GENERIC_ERROR_TITLE")
			});
		},

		/**
		 *
		 */
		_checkConfirmData: function (oData) {
			// TODO check data and return either true or false
			return true;
		},

		/**
		 *
		 */
		_checkRejectData: function (oData) {
			// TODO check data and return either true or false
			return true;
		},

		/**
		 *
		 */
		setBusy: function (isBusy) {
			var oModel = this.getModel("appModel");
			oModel.setProperty("/isBusy", isBusy);
			oModel.refresh();
		},

		/**
		 *
		 */
		_getTaskId: function () {
			var oCompontentData = this.getComponentData();
			if (oCompontentData.startupParameters) {
				var startupParameters = oCompontentData.startupParameters;
				var taskData = startupParameters.taskModel.getData();
				var taskId = taskData.InstanceID;

				return taskId;
			}

			throw Error("no startupParameter available");
		},

		/**
		 *
		 */
		_addAction: function (sName, sButtonText, sButtonType, fnPressed) {
			var oCompontentData = this.getComponentData();
			if (oCompontentData.startupParameters) {
				var startupParameters = this.getComponentData().startupParameters;
				startupParameters.inboxAPI.addAction({
					action: sName,
					label: this.getModel("i18n").getResourceBundle().getText(sButtonText),
					type: sButtonType
				}, fnPressed, this);
			}
		},

		/**
		 *
		 */
		_refreshTask: function () {
			this.getComponentData().startupParameters.inboxAPI.updateTask("NA", this._getTaskId());
		}
	});
});