sap.ui.define(["./BaseController",
		"sap/ui/model/json/JSONModel",
		"sap/ui/model/Filter",
		"sap/ui/model/FilterOperator",
		"sap/m/UploadCollectionParameter",
		"sap/m/MessageToast",
		"sap/m/MessageBox",
		"./messages",
		"sap/m/library",
		"sap/ui/comp/filterbar/FilterBar",
		"sap/ui/comp/filterbar/FilterGroupItem",
		"sap/m/Table",
		'sap/m/Token',
		"sap/ui/comp/valuehelpdialog/ValueHelpDialog",
		"sap/m/Input",
		"sap/m/MultiInput",
		"sap/m/Text"
	],
	function (BaseController, JSONModel, Filter, FilterOperator, UploadCollectionParameter, MessageToast, MessageBox, messages,
		MobileLibrary, FilterBar, FilterGroupItem, mTable, Token, ValueHelpDialog, Input, MultiInput, Text) {
		"use strict";
		return BaseController.extend("SalesCreditSubmit.controller.App", {

		onInit: function () {},

		formatDate: function (value) {
			if (value) {
				var oDateFormat = sap.ui.core.format.DateFormat.getDateTimeInstance({
					pattern: "yyyy-MM-dd"
				});
				return oDateFormat.format(new Date(value));
			} else {
				return value;
			}
		}
	});
});