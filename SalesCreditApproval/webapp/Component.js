sap.ui.define([
	"sap/ui/core/UIComponent",
	"sap/ui/model/json/JSONModel",
	"SalesCreditApproval/model/models",
	"SalesCreditApproval/model/ContextModel",
	"sap/ui/model/Filter",
	"sap/ui/model/FilterOperator"
], function (UIComponent, JSONModel, models, ContextModel, Filter, FilterOperator) {
	"use strict";

	return UIComponent.extend("SalesCreditApproval.Component", {

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

			this.getModel("userAttributes").attachRequestCompleted(function (oEvent) {
				var userAttributes = this.getData();
				// this.setModel(userAttributes.displayname, "Approver");
				that.getModel().setProperty("/Approver", userAttributes.name);
				// that.getUSER(userAttributes.name);
				// that.getModel().setProperty("/ECRData/REQUESTER", userAttributes.displayname);
			});

			// get task instance ID	and read the process context
			try {
				var taskId = this._getTaskId();

				var p = ContextModel.readContext(that, taskId);
				p.then(function (oContext) {
					// loading of context data was successfull

					// TODO Here you can add some initialization if necessary

					oContext.RESULT = "";
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
					that.getWorkflowlog(that, oContext);

					// add buttons to approve and reject
					that._addAction("Approve", "GENERIC_COMPLETE_TITLE", "Accept", function (button) {
						that._callbackAction(oDataModel, "confirm");
					});

					that._addAction("RollBack", "GENERIC_BACK_TITLE", "Reject", function (button) {
						that._callbackAction(oDataModel, "RollBack");
					});

					that._addAction("Reject", "GENERIC_REJECT_TITLE", "", function (button) {
						that._callbackAction(oDataModel, "Reject");
					});

					// remove busy indicator
					that.setBusy(false);
				}, function (err) {
					that._handleError.call(that, err);
				});
			} catch (err) {
				that._handleError.call(that, err);
			}
		},

		_callbackAction: function (oDataModel, action) {

			var that = this;
			var context = oDataModel.getData().context;
			var queryParameters = oDataModel.getData().queryParameters;
			// var task = oDataModel.getData().task;
			var _checkAction = false;
			if (action === "confirm") {
				context.approved = true;
				_checkAction = that._checkConfirmData(oDataModel.getData());
			} else if (action === "Reject") {
				context.approved = false;
				context.flag = false;
				_checkAction = that._checkRejectData(oDataModel.getData());
			} else if (action === "RollBack") {
				context.approved = false;
				context.flag = true;
				_checkAction = that._checkRejectData(oDataModel.getData());
			}
			this.SaveLOG(that, context, queryParameters);
			if (_checkAction) {
				var taskId = that.oComponentData.inboxHandle.attachmentHandle.detailModel.getData().InstanceID;
				var p = ContextModel.triggerComplete(taskId, action, oDataModel.getData().context);
				p.then(function () {
					that._refreshTask.call(that);
				}, function (err) {
					that._handleError.call(that, err);
				});
			}

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
		},
		SaveLOG: function (that, context, queryParameters) {
			var Approver = that.getModel().oData.Approver;
			if (context.approved === true) {
				context.SUGGESTION = "同意";
			} else {
				if (context.flag === true) {
					context.SUGGESTION = "驳回";
				} else {
					context.SUGGESTION = "拒绝";
				}
			}
			var LOGData = {
				STARTCOMPANY: context.COMPANYCODE, //发起公司
				FLOWID: context.workflowDefinitionId, //流程ID
				INSTANCEID: context.workflowInstanceId, //流程实例ID
				"NODEID": queryParameters.node[0],
				"SUBNODEID": queryParameters.subnode[0],
				TASKINSTANCEID: that._getTaskId(),
				DOCUMENT: context.FLOW, //流水号
				ACCOUNT: Approver, //审核人员
				JOB: "", //职位
				APPROVALDATE: new Date(), //审核日期
				CHANGEDATE: new Date(), //修改日期
				SUGGESTION: context.SUGGESTION, //审核结果
				RESULT: context.RESULT //审核意见
			};

			var mParameter = {
				success: function (oData) {
					// resolve(oData);
					var data = oData;
				},
				error: function (oError) {
					// reject(oError);
					var ErrorLOG = oError;
				}
			};
			that.getModel("WORKFLOWLOG").create("/WORKFLOWLOG", LOGData, mParameter);
		},
		getWorkflowlog: function (oController, data) {
			var oFilter1 = new sap.ui.model.Filter("STARTCOMPANY", sap.ui.model.FilterOperator.EQ, data.COMPANYCODE);
			var oFilter2 = new sap.ui.model.Filter("FLOWID", sap.ui.model.FilterOperator.EQ, data.workflowDefinitionId);
			var oFilter3 = new sap.ui.model.Filter("INSTANCEID", sap.ui.model.FilterOperator.EQ, data.workflowInstanceId);
			var oFilter4 = new sap.ui.model.Filter("FLOWID", sap.ui.model.FilterOperator.EQ, data.DELIVERDOCUMENT);
			var aFilters = [oFilter1, oFilter2, oFilter3, oFilter4];
			var mParameter = {
				filters: aFilters,
				success: function (oData, response) {
					if (response.statusCode === "200") {
						var Arry = !oData ? [] : oData.results;
						oController.getModel("data").setProperty("/context/LOG", Arry); //审批记录
						// oController._JSONModel.setProperty("/LOG", Arry);
					}
				}.bind(oController),
				error: function (oError) {}.bind(oController)
			};
			oController.getModel("WORKFLOWLOG").read("/WORKFLOWLOG", mParameter);
		}
	});
});