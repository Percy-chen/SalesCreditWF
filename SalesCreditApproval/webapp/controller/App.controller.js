sap.ui.define([
	"./BaseController",
	"sap/m/MessageToast"
], function (BaseController, MessageToast) {
	"use strict";

	return BaseController.extend("SalesCreditApproval.controller.App", {

		onInit: function () {
			this._JSONModel = this.getModel();
		},

		formatDate: function (value) {
			if (value) {
				var oDateFormat = sap.ui.core.format.DateFormat.getDateTimeInstance({
					pattern: "yyyy-MM-dd"
				});
				return oDateFormat.format(new Date(value));
			} else {
				return value;
			}
		},
		handlePrint: function () {
			var context = this.getModel("data").getProperty("/context");
			var LOG = this.getModel("data").getProperty("/context/LOG");
			var url = "/html5apps/salescreditwf/destinations/Print/ws/data/print/ecr";
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
			// var LOG = this._JSONModel.getData().LOG;
			var Log = [];
			for (var i = 0; i < LOG.length; i++) {
				Log[i] = {
					"deliverDocument": context.DELIVERDOCUMENT,
					"deliverDocumentLine": context.workflowInstanceId,
					"nodeId": LOG[i].NODEID,
					"account": LOG[i].ACCOUNT,
					"job": LOG[i].JOB,
					"approvalDate": LOG[i].APPROVALDATE,
					"suggestion": LOG[i].SUGGESTION,
					"result": LOG[i].RESULT
				};
			}
			var param = {
				"applicant": context.APPLICANT,
				"createDate": context.CREATEDATE,
				"salesMan": context.SALESMAN,
				"deliverDocument": context.DELIVERDOCUMENT,
				"deliverDocumentLine": context.workflowInstanceId,
				"companyCode": context.COMPANYCODE,
				"transCurrency": context.TRANSCURRENCY,
				"creditLimitCurr": context.CREDITLIMITCURR,
				"netAmount": context.NETAMOUNT,
				"compcurr": context.COMPCURR,
				"soldtoparty": context.SOLDTOPARTY,
				"creditBalance": context.CREDITBALANCE,
				"payment": context.PAYMENTTERMS,
				"overDueCurr": context.OVERDUECURR,
				"reason": context.REASON,
				"items": Log
			};
			var xhr = new XMLHttpRequest();
			xhr.responseType = "blob";
			xhr.open("POST", url, true);
			xhr.setRequestHeader("content-Type", "application/json");
			xhr.setRequestHeader("accept-language", language);
			// var that = this;
			xhr.onload = function (e) {
				var sUrl = window.URL.createObjectURL(this.response);
				var link = document.createElement("a");
				link.style.display = "none";
				link.href = sUrl;
				link.target = "_blank";
				// link.setAttribute('download', '11111.pdf');
				document.body.appendChild(link);
				link.click();
				document.body.removeChild(link);
			};
			xhr.send(JSON.stringify(param));
		}
	});
});