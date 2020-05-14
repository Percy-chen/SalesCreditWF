{
	"contents": {
		"1162c793-b726-489c-8b6b-273fac54282e": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflow_salescredit",
			"subject": "超額申請${context.DELIVERDOCUMENT}",
			"name": "workflow_salescredit",
			"lastIds": "fe5543f8-03bf-4f2a-80d8-9279b50bfbff",
			"events": {
				"b3a45a11-b650-45cb-bc60-2fc892ba7389": {
					"name": "提交申请"
				},
				"484f8eab-c14b-40ed-8c87-210aeb099d98": {
					"name": "EndEvent3"
				},
				"7669c76b-eb09-4591-8666-e4e775925ea9": {
					"name": "流程结束"
				}
			},
			"activities": {
				"f317311f-e08b-45f2-bf79-b7311e6e5b77": {
					"name": "發起人審批"
				},
				"786f05af-3ed3-4e6e-af57-a432d5e5c99c": {
					"name": "获取業務主管"
				},
				"90603a57-7113-4447-8c31-be4191c006ef": {
					"name": "审批人信息处理"
				},
				"b05bb300-1ddc-4a43-bd4d-e5aafb9c2875": {
					"name": "業務主管審批"
				},
				"c7ded937-78f0-4f94-a5eb-40f7175131cf": {
					"name": "is Approval?"
				},
				"37604cc3-06a5-4d96-93b0-ef936715b024": {
					"name": "获取財務"
				},
				"3ce9c984-d23a-43af-a01f-6d4b499a208c": {
					"name": "审批人信息处理"
				},
				"b1024802-5cce-4792-8b10-4c62ace8f5a9": {
					"name": "財務審批"
				},
				"7751083d-b6d1-4fe1-a5d4-524352c9ce8a": {
					"name": "is Approval?"
				},
				"ef3d258b-2ba1-4e7c-95f5-a0c6a469dec4": {
					"name": "获取財務主管"
				},
				"3c94ec19-bac1-49df-b3fb-74faedcf24d3": {
					"name": "审批人信息处理"
				},
				"699f9abb-cf01-4853-b44c-360a324c622a": {
					"name": "財務主管審批"
				},
				"654e0428-de29-479c-ae44-a4b01b8720ac": {
					"name": "is Approval?"
				},
				"5270257f-c653-4f9d-aa14-03315bd72a29": {
					"name": "获取總經理"
				},
				"57327c7c-41f3-49de-881b-fd29839394f1": {
					"name": "审批人信息处理"
				},
				"70d1f5c8-4ffb-41f1-8206-e4903a1f8bcd": {
					"name": "總經理審批"
				},
				"a9e00487-9a5f-4a1c-9b81-01ae096610c5": {
					"name": "信息处理"
				},
				"2f05bb4f-d6eb-4bfa-9c1c-15f5f3483c26": {
					"name": "邮件通知"
				},
				"cb300c83-355d-46e8-8e4c-63b0ea8de294": {
					"name": "获取收件人账号"
				},
				"fb1424c1-5fdd-4767-862f-f50e960e1848": {
					"name": "获取收件人邮箱"
				},
				"ef38d172-d3ee-493d-a307-960933597197": {
					"name": "绑定邮箱地址"
				},
				"e89767ed-ab69-4c61-9294-2e9e6d265c82": {
					"name": "拒绝or驳回"
				},
				"5396efad-d649-4fbe-b0e8-c3175a54cc8c": {
					"name": "is Approval?"
				},
				"e2f47ca1-ed04-428a-b2f6-7e0a9e904742": {
					"name": "業務審批"
				},
				"399d18a1-54b0-4028-ac18-b036d405d9a6": {
					"name": "is Approval?"
				},
				"402171e3-dfb4-450d-89f9-1a3f97349bd5": {
					"name": "获取收件人邮箱"
				},
				"88568fe2-85aa-4a4e-ba99-e3102ea0c50b": {
					"name": "绑定邮箱地址"
				},
				"5427aff2-0a98-4291-8b3f-fa86ea54a9dd": {
					"name": "邮件通知"
				}
			},
			"sequenceFlows": {
				"a79ba62c-3216-4d23-97c1-40cbfebefc44": {
					"name": "SequenceFlow1"
				},
				"3681e709-d001-451e-98a6-8ce18132bc3d": {
					"name": "SequenceFlow2"
				},
				"75e01e15-1d11-447f-8d5c-c68ee987a788": {
					"name": "SequenceFlow3"
				},
				"b6f566ac-b12f-4aa7-9a89-871db7035a95": {
					"name": "SequenceFlow4"
				},
				"53e8b97d-6282-4f0a-b4d2-6dee8e1f2139": {
					"name": "SequenceFlow5"
				},
				"8c0de3dc-f0c8-4b63-8502-117c1db8b65a": {
					"name": "YES"
				},
				"31c2d8fb-18c9-4254-b307-1aa694aeba18": {
					"name": "SequenceFlow7"
				},
				"6acff54f-0fe9-46c6-905b-bddf1105eead": {
					"name": "SequenceFlow8"
				},
				"45bde573-1c85-41ad-b78a-41cb47a133b6": {
					"name": "SequenceFlow9"
				},
				"a84893d6-9d8f-4633-b470-0b56d04b43d6": {
					"name": "YES"
				},
				"dee3d057-0426-427c-aafb-ef41f74278ba": {
					"name": "SequenceFlow11"
				},
				"f2ce6fde-f93c-4f0d-b70d-08c70f870a86": {
					"name": "SequenceFlow12"
				},
				"5378b582-fcfb-4858-94d5-2e9d79112f49": {
					"name": "SequenceFlow13"
				},
				"75731a06-b3b3-4da9-b40d-ff1de261df38": {
					"name": "YES"
				},
				"27a014d3-1cf3-425d-84f1-8b07b6bf8a44": {
					"name": "SequenceFlow15"
				},
				"719f6c6a-6cba-40b5-a663-e70405a5e20e": {
					"name": "SequenceFlow16"
				},
				"af9f8b64-d4ed-4877-955b-e92fba212936": {
					"name": "SequenceFlow18"
				},
				"e41dce41-e894-4a92-888c-f9e461617703": {
					"name": "NO"
				},
				"57969ec8-d05a-4c7d-a349-17fa02990fb1": {
					"name": "NO"
				},
				"a2f69f7f-99af-449a-8e47-edd9108a7401": {
					"name": "NO"
				},
				"fb704f0f-607b-4b99-be4d-960b91e84557": {
					"name": "SequenceFlow28"
				},
				"1410e82b-40e8-47d7-865c-1bfc6f8644f5": {
					"name": "SequenceFlow29"
				},
				"4f57141e-6945-4bd6-a861-ff881b53e821": {
					"name": "SequenceFlow34"
				},
				"830e1b9d-29d7-4393-912e-4667a24af5a8": {
					"name": "SequenceFlow35"
				},
				"7db3e863-07f5-43a0-a7e9-b47dd00225d9": {
					"name": "驳回"
				},
				"ee276aed-397a-4844-a0e2-e6ea3f047e13": {
					"name": "拒绝"
				},
				"fc543052-b580-46eb-bd93-bf3385017002": {
					"name": "SequenceFlow38"
				},
				"e0f73b91-28f9-4f8d-af57-1042b23db9fd": {
					"name": "YES"
				},
				"f2441f6a-1bf3-495b-93d0-498810295018": {
					"name": "NO"
				},
				"7b7833b9-c335-4beb-9f91-8c09a23e585e": {
					"name": "YES"
				},
				"48de6691-8a5c-4bd5-8128-43f315627180": {
					"name": "NO"
				},
				"e934a992-ff86-46f8-8058-88a36c492c67": {
					"name": "SequenceFlow43"
				},
				"82baf4a6-974f-4e4e-a4d1-374f57515915": {
					"name": "SequenceFlow44"
				},
				"d2e5e14c-3a04-43ae-94d0-7003fac2a7fa": {
					"name": "SequenceFlow45"
				},
				"2c1de1e9-fc96-4d8a-ad2d-5e9ed40663ec": {
					"name": "SequenceFlow46"
				}
			},
			"diagrams": {
				"318433a6-f884-4aa7-a3c7-a0c60ef3d0c6": {}
			}
		},
		"b3a45a11-b650-45cb-bc60-2fc892ba7389": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "提交申请"
		},
		"484f8eab-c14b-40ed-8c87-210aeb099d98": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "EndEvent3"
		},
		"f317311f-e08b-45f2-bf79-b7311e6e5b77": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "超額申請${context.DELIVERDOCUMENT}審批",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/salescreditwf/SalesCreditApproval/webapp/SalesCreditApproval",
			"recipientUsers": "${context.APPLICANT}",
			"userInterfaceParams": [{
				"key": "node",
				"value": "0010"
			}, {
				"key": "subnode",
				"value": "0010"
			}],
			"id": "usertask1",
			"name": "發起人審批"
		},
		"786f05af-3ed3-4e6e-af57-a432d5e5c99c": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APLEXHANAWORKFLOW",
			"path": "/WORKFLOWNODE.xsodata/WORKFLOWNODE?$filter= FLOWID eq 'workflow_salescredit' and NODEID eq '0030'",
			"httpMethod": "GET",
			"responseVariable": "${context.User}",
			"id": "servicetask1",
			"name": "获取業務主管"
		},
		"90603a57-7113-4447-8c31-be4191c006ef": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_salescredit/DEALINFO.js",
			"id": "scripttask1",
			"name": "审批人信息处理"
		},
		"b05bb300-1ddc-4a43-bd4d-e5aafb9c2875": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "超額申請${context.DELIVERDOCUMENT}審批",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/salescreditwf/SalesCreditApproval/webapp/SalesCreditApproval",
			"recipientUsers": "${context.approvalTree[\"node0030\"][\"subNode0010\"].account}",
			"userInterfaceParams": [{
				"key": "node",
				"value": "0030"
			}, {
				"key": "subnode",
				"value": "0010"
			}],
			"id": "usertask2",
			"name": "業務主管審批"
		},
		"c7ded937-78f0-4f94-a5eb-40f7175131cf": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "is Approval?",
			"default": "8c0de3dc-f0c8-4b63-8502-117c1db8b65a"
		},
		"37604cc3-06a5-4d96-93b0-ef936715b024": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APLEXHANAWORKFLOW",
			"path": "/WORKFLOWNODE.xsodata/WORKFLOWNODE?$filter= FLOWID eq 'workflow_salescredit' and NODEID eq '0040'",
			"httpMethod": "GET",
			"responseVariable": "${context.User}",
			"id": "servicetask2",
			"name": "获取財務"
		},
		"3ce9c984-d23a-43af-a01f-6d4b499a208c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_salescredit/DEALINFO.js",
			"id": "scripttask2",
			"name": "审批人信息处理"
		},
		"b1024802-5cce-4792-8b10-4c62ace8f5a9": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "超額申請${context.DELIVERDOCUMENT}審批",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/salescreditwf/SalesCreditApproval/webapp/SalesCreditApproval",
			"recipientUsers": "${context.approvalTree[\"node0040\"][\"subNode0010\"].account}",
			"userInterfaceParams": [{
				"key": "node",
				"value": "0040"
			}, {
				"key": "subnode",
				"value": "0010"
			}],
			"id": "usertask3",
			"name": "財務審批"
		},
		"7751083d-b6d1-4fe1-a5d4-524352c9ce8a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "is Approval?",
			"default": "a84893d6-9d8f-4633-b470-0b56d04b43d6"
		},
		"ef3d258b-2ba1-4e7c-95f5-a0c6a469dec4": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APLEXHANAWORKFLOW",
			"path": "/WORKFLOWNODE.xsodata/WORKFLOWNODE?$filter= FLOWID eq 'workflow_salescredit' and NODEID eq '0050'",
			"httpMethod": "GET",
			"responseVariable": "${context.User}",
			"id": "servicetask3",
			"name": "获取財務主管"
		},
		"3c94ec19-bac1-49df-b3fb-74faedcf24d3": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_salescredit/DEALINFO.js",
			"id": "scripttask3",
			"name": "审批人信息处理"
		},
		"699f9abb-cf01-4853-b44c-360a324c622a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "超額申請${context.DELIVERDOCUMENT}審批",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/salescreditwf/SalesCreditApproval/webapp/SalesCreditApproval",
			"recipientUsers": "${context.approvalTree[\"node0050\"][\"subNode0010\"].account}",
			"userInterfaceParams": [{
				"key": "node",
				"value": "0050"
			}, {
				"key": "subnode",
				"value": "0010"
			}],
			"id": "usertask4",
			"name": "財務主管審批"
		},
		"654e0428-de29-479c-ae44-a4b01b8720ac": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "is Approval?",
			"default": "75731a06-b3b3-4da9-b40d-ff1de261df38"
		},
		"5270257f-c653-4f9d-aa14-03315bd72a29": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APLEXHANAWORKFLOW",
			"path": "/WORKFLOWNODE.xsodata/WORKFLOWNODE?$filter= FLOWID eq 'workflow_salescredit' and NODEID eq '0060'",
			"httpMethod": "GET",
			"responseVariable": "${context.User}",
			"id": "servicetask4",
			"name": "获取總經理"
		},
		"57327c7c-41f3-49de-881b-fd29839394f1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_salescredit/DEALINFO.js",
			"id": "scripttask4",
			"name": "审批人信息处理"
		},
		"70d1f5c8-4ffb-41f1-8206-e4903a1f8bcd": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "超額申請${context.DELIVERDOCUMENT}審批",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/salescreditwf/SalesCreditApproval/webapp/SalesCreditApproval",
			"recipientUsers": "${context.approvalTree[\"node0060\"][\"subNode0010\"].account}",
			"userInterfaceParams": [{
				"key": "node",
				"value": "0060"
			}, {
				"key": "subnode",
				"value": "0010"
			}],
			"id": "usertask5",
			"name": "總經理審批"
		},
		"a9e00487-9a5f-4a1c-9b81-01ae096610c5": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_salescredit/SETINFO.js",
			"id": "scripttask5",
			"name": "信息处理"
		},
		"2f05bb4f-d6eb-4bfa-9c1c-15f5f3483c26": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "邮件通知",
			"mailDefinitionRef": "9641de65-3be3-426b-af5c-459a67d7ac88"
		},
		"cb300c83-355d-46e8-8e4c-63b0ea8de294": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APLEXHANAWORKFLOW",
			"path": "/WORKFLOWNODE.xsodata/WORKFLOWNODE?$filter= FLOWID eq 'workflow_salescredit'",
			"httpMethod": "GET",
			"responseVariable": "${context.User}",
			"id": "servicetask5",
			"name": "获取收件人账号"
		},
		"fb1424c1-5fdd-4767-862f-f50e960e1848": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APLEXHANAWORKFLOW",
			"path": "/EMPLOYEES.xsodata/EMPLOYEES",
			"httpMethod": "GET",
			"responseVariable": "${context.Mail}",
			"id": "servicetask6",
			"name": "获取收件人邮箱"
		},
		"ef38d172-d3ee-493d-a307-960933597197": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_salescredit/SETEMAIL.js",
			"id": "scripttask6",
			"name": "绑定邮箱地址"
		},
		"e89767ed-ab69-4c61-9294-2e9e6d265c82": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "拒绝or驳回",
			"default": "7db3e863-07f5-43a0-a7e9-b47dd00225d9"
		},
		"5396efad-d649-4fbe-b0e8-c3175a54cc8c": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "is Approval?",
			"default": "e0f73b91-28f9-4f8d-af57-1042b23db9fd"
		},
		"e2f47ca1-ed04-428a-b2f6-7e0a9e904742": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "超額申請${context.DELIVERDOCUMENT}審批",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/salescreditwf/SalesCreditApproval/webapp/SalesCreditApproval",
			"recipientUsers": "${context.Node2Account}",
			"userInterfaceParams": [{
				"key": "node",
				"value": "0020"
			}, {
				"key": "subnode",
				"value": "0010"
			}],
			"id": "usertask7",
			"name": "業務審批"
		},
		"399d18a1-54b0-4028-ac18-b036d405d9a6": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "is Approval?",
			"default": "7b7833b9-c335-4beb-9f91-8c09a23e585e"
		},
		"402171e3-dfb4-450d-89f9-1a3f97349bd5": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APLEXHANAWORKFLOW",
			"path": "/EMPLOYEES.xsodata/EMPLOYEES('${context.Node2Account}')",
			"httpMethod": "GET",
			"responseVariable": "${context.Mail}",
			"id": "servicetask7",
			"name": "获取收件人邮箱"
		},
		"88568fe2-85aa-4a4e-ba99-e3102ea0c50b": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_salescredit/EmailAdress.js",
			"id": "scripttask7",
			"name": "绑定邮箱地址"
		},
		"5427aff2-0a98-4291-8b3f-fa86ea54a9dd": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "邮件通知",
			"mailDefinitionRef": "b43e498b-b15b-4e6d-ba6d-142793b26440"
		},
		"a79ba62c-3216-4d23-97c1-40cbfebefc44": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "b3a45a11-b650-45cb-bc60-2fc892ba7389",
			"targetRef": "a9e00487-9a5f-4a1c-9b81-01ae096610c5"
		},
		"3681e709-d001-451e-98a6-8ce18132bc3d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "f317311f-e08b-45f2-bf79-b7311e6e5b77",
			"targetRef": "5396efad-d649-4fbe-b0e8-c3175a54cc8c"
		},
		"75e01e15-1d11-447f-8d5c-c68ee987a788": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "786f05af-3ed3-4e6e-af57-a432d5e5c99c",
			"targetRef": "90603a57-7113-4447-8c31-be4191c006ef"
		},
		"b6f566ac-b12f-4aa7-9a89-871db7035a95": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "90603a57-7113-4447-8c31-be4191c006ef",
			"targetRef": "b05bb300-1ddc-4a43-bd4d-e5aafb9c2875"
		},
		"53e8b97d-6282-4f0a-b4d2-6dee8e1f2139": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "b05bb300-1ddc-4a43-bd4d-e5aafb9c2875",
			"targetRef": "c7ded937-78f0-4f94-a5eb-40f7175131cf"
		},
		"8c0de3dc-f0c8-4b63-8502-117c1db8b65a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "YES",
			"sourceRef": "c7ded937-78f0-4f94-a5eb-40f7175131cf",
			"targetRef": "37604cc3-06a5-4d96-93b0-ef936715b024"
		},
		"31c2d8fb-18c9-4254-b307-1aa694aeba18": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "37604cc3-06a5-4d96-93b0-ef936715b024",
			"targetRef": "3ce9c984-d23a-43af-a01f-6d4b499a208c"
		},
		"6acff54f-0fe9-46c6-905b-bddf1105eead": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "3ce9c984-d23a-43af-a01f-6d4b499a208c",
			"targetRef": "b1024802-5cce-4792-8b10-4c62ace8f5a9"
		},
		"45bde573-1c85-41ad-b78a-41cb47a133b6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "b1024802-5cce-4792-8b10-4c62ace8f5a9",
			"targetRef": "7751083d-b6d1-4fe1-a5d4-524352c9ce8a"
		},
		"a84893d6-9d8f-4633-b470-0b56d04b43d6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "YES",
			"sourceRef": "7751083d-b6d1-4fe1-a5d4-524352c9ce8a",
			"targetRef": "ef3d258b-2ba1-4e7c-95f5-a0c6a469dec4"
		},
		"dee3d057-0426-427c-aafb-ef41f74278ba": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "ef3d258b-2ba1-4e7c-95f5-a0c6a469dec4",
			"targetRef": "3c94ec19-bac1-49df-b3fb-74faedcf24d3"
		},
		"f2ce6fde-f93c-4f0d-b70d-08c70f870a86": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "3c94ec19-bac1-49df-b3fb-74faedcf24d3",
			"targetRef": "699f9abb-cf01-4853-b44c-360a324c622a"
		},
		"5378b582-fcfb-4858-94d5-2e9d79112f49": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "699f9abb-cf01-4853-b44c-360a324c622a",
			"targetRef": "654e0428-de29-479c-ae44-a4b01b8720ac"
		},
		"75731a06-b3b3-4da9-b40d-ff1de261df38": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "YES",
			"sourceRef": "654e0428-de29-479c-ae44-a4b01b8720ac",
			"targetRef": "5270257f-c653-4f9d-aa14-03315bd72a29"
		},
		"27a014d3-1cf3-425d-84f1-8b07b6bf8a44": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "5270257f-c653-4f9d-aa14-03315bd72a29",
			"targetRef": "57327c7c-41f3-49de-881b-fd29839394f1"
		},
		"719f6c6a-6cba-40b5-a663-e70405a5e20e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "57327c7c-41f3-49de-881b-fd29839394f1",
			"targetRef": "70d1f5c8-4ffb-41f1-8206-e4903a1f8bcd"
		},
		"af9f8b64-d4ed-4877-955b-e92fba212936": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "a9e00487-9a5f-4a1c-9b81-01ae096610c5",
			"targetRef": "f317311f-e08b-45f2-bf79-b7311e6e5b77"
		},
		"e41dce41-e894-4a92-888c-f9e461617703": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved==false}",
			"id": "sequenceflow19",
			"name": "NO",
			"sourceRef": "c7ded937-78f0-4f94-a5eb-40f7175131cf",
			"targetRef": "e89767ed-ab69-4c61-9294-2e9e6d265c82"
		},
		"57969ec8-d05a-4c7d-a349-17fa02990fb1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved==false}",
			"id": "sequenceflow20",
			"name": "NO",
			"sourceRef": "7751083d-b6d1-4fe1-a5d4-524352c9ce8a",
			"targetRef": "e89767ed-ab69-4c61-9294-2e9e6d265c82"
		},
		"a2f69f7f-99af-449a-8e47-edd9108a7401": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved==false}",
			"id": "sequenceflow21",
			"name": "NO",
			"sourceRef": "654e0428-de29-479c-ae44-a4b01b8720ac",
			"targetRef": "e89767ed-ab69-4c61-9294-2e9e6d265c82"
		},
		"fb704f0f-607b-4b99-be4d-960b91e84557": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "cb300c83-355d-46e8-8e4c-63b0ea8de294",
			"targetRef": "fb1424c1-5fdd-4767-862f-f50e960e1848"
		},
		"1410e82b-40e8-47d7-865c-1bfc6f8644f5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "fb1424c1-5fdd-4767-862f-f50e960e1848",
			"targetRef": "ef38d172-d3ee-493d-a307-960933597197"
		},
		"4f57141e-6945-4bd6-a861-ff881b53e821": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow34",
			"name": "SequenceFlow34",
			"sourceRef": "ef38d172-d3ee-493d-a307-960933597197",
			"targetRef": "2f05bb4f-d6eb-4bfa-9c1c-15f5f3483c26"
		},
		"830e1b9d-29d7-4393-912e-4667a24af5a8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "SequenceFlow35",
			"sourceRef": "2f05bb4f-d6eb-4bfa-9c1c-15f5f3483c26",
			"targetRef": "484f8eab-c14b-40ed-8c87-210aeb099d98"
		},
		"7db3e863-07f5-43a0-a7e9-b47dd00225d9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow36",
			"name": "驳回",
			"sourceRef": "e89767ed-ab69-4c61-9294-2e9e6d265c82",
			"targetRef": "402171e3-dfb4-450d-89f9-1a3f97349bd5"
		},
		"ee276aed-397a-4844-a0e2-e6ea3f047e13": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.flag==false}",
			"id": "sequenceflow37",
			"name": "拒绝",
			"sourceRef": "e89767ed-ab69-4c61-9294-2e9e6d265c82",
			"targetRef": "cb300c83-355d-46e8-8e4c-63b0ea8de294"
		},
		"fc543052-b580-46eb-bd93-bf3385017002": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow38",
			"name": "SequenceFlow38",
			"sourceRef": "70d1f5c8-4ffb-41f1-8206-e4903a1f8bcd",
			"targetRef": "cb300c83-355d-46e8-8e4c-63b0ea8de294"
		},
		"e0f73b91-28f9-4f8d-af57-1042b23db9fd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow39",
			"name": "YES",
			"sourceRef": "5396efad-d649-4fbe-b0e8-c3175a54cc8c",
			"targetRef": "e2f47ca1-ed04-428a-b2f6-7e0a9e904742"
		},
		"f2441f6a-1bf3-495b-93d0-498810295018": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved==false}",
			"id": "sequenceflow40",
			"name": "NO",
			"sourceRef": "5396efad-d649-4fbe-b0e8-c3175a54cc8c",
			"targetRef": "e89767ed-ab69-4c61-9294-2e9e6d265c82"
		},
		"7b7833b9-c335-4beb-9f91-8c09a23e585e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow41",
			"name": "YES",
			"sourceRef": "399d18a1-54b0-4028-ac18-b036d405d9a6",
			"targetRef": "786f05af-3ed3-4e6e-af57-a432d5e5c99c"
		},
		"48de6691-8a5c-4bd5-8128-43f315627180": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved==false}",
			"id": "sequenceflow42",
			"name": "NO",
			"sourceRef": "399d18a1-54b0-4028-ac18-b036d405d9a6",
			"targetRef": "e89767ed-ab69-4c61-9294-2e9e6d265c82"
		},
		"e934a992-ff86-46f8-8058-88a36c492c67": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow43",
			"name": "SequenceFlow43",
			"sourceRef": "e2f47ca1-ed04-428a-b2f6-7e0a9e904742",
			"targetRef": "399d18a1-54b0-4028-ac18-b036d405d9a6"
		},
		"82baf4a6-974f-4e4e-a4d1-374f57515915": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow44",
			"name": "SequenceFlow44",
			"sourceRef": "402171e3-dfb4-450d-89f9-1a3f97349bd5",
			"targetRef": "88568fe2-85aa-4a4e-ba99-e3102ea0c50b"
		},
		"d2e5e14c-3a04-43ae-94d0-7003fac2a7fa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow45",
			"name": "SequenceFlow45",
			"sourceRef": "88568fe2-85aa-4a4e-ba99-e3102ea0c50b",
			"targetRef": "5427aff2-0a98-4291-8b3f-fa86ea54a9dd"
		},
		"318433a6-f884-4aa7-a3c7-a0c60ef3d0c6": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"0bb517b6-77de-4f4c-8b0a-df3f9d8bc78a": {},
				"44b0e7f5-ed2e-45f0-90c8-aa904f893d41": {},
				"cfa63e2a-8a69-4ff8-8b4f-1b4910e1f031": {},
				"eb320f5f-c4cc-433d-958c-e1402eb3b8ca": {},
				"ce6c4dd3-9beb-42d5-9834-c8c81cd36c6f": {},
				"2f0bedc7-8a47-42da-87ad-c1eae4adeb63": {},
				"93dd2504-0220-4f51-935c-b6bc1790eba2": {},
				"e903bd69-599f-4eef-b3c0-d072eae2fbf7": {},
				"29edbc78-8a20-46ae-9e3b-bf7f18a52281": {},
				"f8a21964-2029-455b-937f-03c082302585": {},
				"4795f4b9-3a78-4bb7-8b39-9a9b81110894": {},
				"e96bbfca-2c32-4f7f-bc8b-bff297aed3de": {},
				"5ae72be4-2a44-4428-a934-af08f6ebabbb": {},
				"d8a50178-0d98-4acb-b79a-7d7e2065912b": {},
				"53180492-3ef3-416a-b475-933513718e75": {},
				"54767017-c2ee-4eb2-89a6-6abcb85dc239": {},
				"7815a73d-4416-47f1-95a5-2d30d63a9f70": {},
				"d42eb9eb-7786-4d1b-9032-d4462bc9bbb4": {},
				"96ee170f-ac17-4413-8c94-359e5c2b990a": {},
				"a1a3d941-ebc4-43eb-bbe0-354e575d1064": {},
				"6a17a569-872c-4be1-bf12-4a62a24ae252": {},
				"1c278f16-0406-4720-9e07-674fcab2da5f": {},
				"91cf0dc9-ecb8-4ab1-a013-7aa379a38b70": {},
				"c2d0de18-88d1-4531-962f-27e3f745bcd4": {},
				"555ec187-3f3b-4c74-8afc-52b7ea635d7f": {},
				"d25445f9-ba83-4faf-9418-f9f687b6eaa0": {},
				"8336df0d-a5b0-4dae-9f7e-434e865a267b": {},
				"f5a49e05-498b-4579-97fe-90c838fc2450": {},
				"b8dcdad0-407c-4395-a1d3-b2e032ee1b1b": {},
				"52c22316-c5fd-459f-9e6f-0a9a2ab98c93": {},
				"4081fab2-5dca-4db4-8307-0efffd5c1779": {},
				"2380ef6d-40f4-42b2-aa01-dccab99896f6": {},
				"dea69bef-b868-4df7-9fc1-492f73dbe11a": {},
				"f2f9f812-7de8-4b7d-9430-f0bb0a4511fd": {},
				"eaaaed15-dfe7-4e81-a9ef-57b2d820246e": {},
				"6d40f58f-8f5d-49de-b57a-fae48f18afc9": {},
				"5a45b934-8b44-47ff-92f3-b01480320bd3": {},
				"ba2657fe-151a-4528-86ee-58cd59371ab8": {},
				"3cc643b4-ba9e-48c0-a1e8-5970fd104c38": {},
				"ce4f8825-3ebd-4c84-aaa2-d03f2cafa0cb": {},
				"a67d50d8-0288-42b2-9437-953d3262eb17": {},
				"ce4e4156-da8b-426d-bcd8-a45a20dac0b7": {},
				"6e1ab1f2-a0e6-4d51-94f4-e7feeccf5b65": {},
				"52f00b81-be0d-4748-b321-f3f7b60493fb": {},
				"1144ffb3-71f0-4346-888b-276bcf7c1851": {},
				"1c8a9619-c176-4fc2-b858-7f21d071a84f": {},
				"970f4086-f943-447d-a8fa-7b4b13eb7a69": {},
				"65c8b7ec-069b-4429-b668-aff6cbc510ff": {},
				"1f4afca2-aa29-4007-820d-492c1e7688e9": {},
				"5c509215-18bc-4bcd-8d59-6fa073070a47": {},
				"7e152eca-d33d-4066-9509-0aa69db3fb9e": {},
				"9ed95a6c-0dce-4f94-b6ef-a5dc14fe7ff4": {},
				"ab39566c-e2dd-4d5a-95af-8f584ecd1cbb": {},
				"8831899b-fc22-45f3-9506-d99b3dd2cb0e": {},
				"57c5601c-3ff2-46d0-a878-a5d2501c1c8a": {},
				"f4ab79bb-515c-496b-8228-84510996b63c": {},
				"89656c5d-5157-4d04-8dfd-17786fe8d2b0": {},
				"69d036af-0c03-416d-a521-4703a2db19bd": {},
				"4417ce06-8601-4aa8-bbda-1e0ea0e7d9ca": {},
				"9f631b0d-a635-4ca5-8353-9a5333a8b916": {},
				"4ad22d9d-8a4e-4237-95c3-f62c25e8b6be": {},
				"d6d7f546-b5e6-440d-a36b-dca7a0f34d23": {},
				"01c1c9dc-8d42-409a-bb8a-96b3e1e638be": {},
				"40444c76-e9ce-4d89-b7b9-847d2cba529f": {},
				"a4fe1eb1-d7cc-4d2c-97ca-abf8f014dfcb": {},
				"2382055f-7028-451d-b2d9-30b3b3d36f14": {}
			}
		},
		"0bb517b6-77de-4f4c-8b0a-df3f9d8bc78a": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "b3a45a11-b650-45cb-bc60-2fc892ba7389"
		},
		"44b0e7f5-ed2e-45f0-90c8-aa904f893d41": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "0bb517b6-77de-4f4c-8b0a-df3f9d8bc78a",
			"targetSymbol": "f2f9f812-7de8-4b7d-9430-f0bb0a4511fd",
			"object": "a79ba62c-3216-4d23-97c1-40cbfebefc44"
		},
		"cfa63e2a-8a69-4ff8-8b4f-1b4910e1f031": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "f317311f-e08b-45f2-bf79-b7311e6e5b77"
		},
		"eb320f5f-c4cc-433d-958c-e1402eb3b8ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "294,42 294,115.75 373,115.75 373,180",
			"sourceSymbol": "cfa63e2a-8a69-4ff8-8b4f-1b4910e1f031",
			"targetSymbol": "9ed95a6c-0dce-4f94-b6ef-a5dc14fe7ff4",
			"object": "3681e709-d001-451e-98a6-8ce18132bc3d"
		},
		"ce6c4dd3-9beb-42d5-9834-c8c81cd36c6f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 394,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "786f05af-3ed3-4e6e-af57-a432d5e5c99c"
		},
		"2f0bedc7-8a47-42da-87ad-c1eae4adeb63": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,42 544,42",
			"sourceSymbol": "ce6c4dd3-9beb-42d5-9834-c8c81cd36c6f",
			"targetSymbol": "93dd2504-0220-4f51-935c-b6bc1790eba2",
			"object": "75e01e15-1d11-447f-8d5c-c68ee987a788"
		},
		"93dd2504-0220-4f51-935c-b6bc1790eba2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 544,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "90603a57-7113-4447-8c31-be4191c006ef"
		},
		"e903bd69-599f-4eef-b3c0-d072eae2fbf7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "644,42 694,42",
			"sourceSymbol": "93dd2504-0220-4f51-935c-b6bc1790eba2",
			"targetSymbol": "29edbc78-8a20-46ae-9e3b-bf7f18a52281",
			"object": "b6f566ac-b12f-4aa7-9a89-871db7035a95"
		},
		"29edbc78-8a20-46ae-9e3b-bf7f18a52281": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 694,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "b05bb300-1ddc-4a43-bd4d-e5aafb9c2875"
		},
		"f8a21964-2029-455b-937f-03c082302585": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "794,42 844,42",
			"sourceSymbol": "29edbc78-8a20-46ae-9e3b-bf7f18a52281",
			"targetSymbol": "4795f4b9-3a78-4bb7-8b39-9a9b81110894",
			"object": "53e8b97d-6282-4f0a-b4d2-6dee8e1f2139"
		},
		"4795f4b9-3a78-4bb7-8b39-9a9b81110894": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 844,
			"y": 21,
			"object": "c7ded937-78f0-4f94-a5eb-40f7175131cf"
		},
		"e96bbfca-2c32-4f7f-bc8b-bff297aed3de": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "886,42 936,42",
			"sourceSymbol": "4795f4b9-3a78-4bb7-8b39-9a9b81110894",
			"targetSymbol": "5ae72be4-2a44-4428-a934-af08f6ebabbb",
			"object": "8c0de3dc-f0c8-4b63-8502-117c1db8b65a"
		},
		"5ae72be4-2a44-4428-a934-af08f6ebabbb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 936,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "37604cc3-06a5-4d96-93b0-ef936715b024"
		},
		"d8a50178-0d98-4acb-b79a-7d7e2065912b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1036,42 1086,42",
			"sourceSymbol": "5ae72be4-2a44-4428-a934-af08f6ebabbb",
			"targetSymbol": "53180492-3ef3-416a-b475-933513718e75",
			"object": "31c2d8fb-18c9-4254-b307-1aa694aeba18"
		},
		"53180492-3ef3-416a-b475-933513718e75": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1086,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "3ce9c984-d23a-43af-a01f-6d4b499a208c"
		},
		"54767017-c2ee-4eb2-89a6-6abcb85dc239": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1186,42 1236,42",
			"sourceSymbol": "53180492-3ef3-416a-b475-933513718e75",
			"targetSymbol": "7815a73d-4416-47f1-95a5-2d30d63a9f70",
			"object": "6acff54f-0fe9-46c6-905b-bddf1105eead"
		},
		"7815a73d-4416-47f1-95a5-2d30d63a9f70": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1236,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "b1024802-5cce-4792-8b10-4c62ace8f5a9"
		},
		"d42eb9eb-7786-4d1b-9032-d4462bc9bbb4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1336,42 1386,42",
			"sourceSymbol": "7815a73d-4416-47f1-95a5-2d30d63a9f70",
			"targetSymbol": "96ee170f-ac17-4413-8c94-359e5c2b990a",
			"object": "45bde573-1c85-41ad-b78a-41cb47a133b6"
		},
		"96ee170f-ac17-4413-8c94-359e5c2b990a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1386,
			"y": 21,
			"object": "7751083d-b6d1-4fe1-a5d4-524352c9ce8a"
		},
		"a1a3d941-ebc4-43eb-bbe0-354e575d1064": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1428,42 1478,42",
			"sourceSymbol": "96ee170f-ac17-4413-8c94-359e5c2b990a",
			"targetSymbol": "6a17a569-872c-4be1-bf12-4a62a24ae252",
			"object": "a84893d6-9d8f-4633-b470-0b56d04b43d6"
		},
		"6a17a569-872c-4be1-bf12-4a62a24ae252": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1478,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "ef3d258b-2ba1-4e7c-95f5-a0c6a469dec4"
		},
		"1c278f16-0406-4720-9e07-674fcab2da5f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1578,42 1628,42",
			"sourceSymbol": "6a17a569-872c-4be1-bf12-4a62a24ae252",
			"targetSymbol": "91cf0dc9-ecb8-4ab1-a013-7aa379a38b70",
			"object": "dee3d057-0426-427c-aafb-ef41f74278ba"
		},
		"91cf0dc9-ecb8-4ab1-a013-7aa379a38b70": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1628,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "3c94ec19-bac1-49df-b3fb-74faedcf24d3"
		},
		"c2d0de18-88d1-4531-962f-27e3f745bcd4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1728,42 1778,42",
			"sourceSymbol": "91cf0dc9-ecb8-4ab1-a013-7aa379a38b70",
			"targetSymbol": "555ec187-3f3b-4c74-8afc-52b7ea635d7f",
			"object": "f2ce6fde-f93c-4f0d-b70d-08c70f870a86"
		},
		"555ec187-3f3b-4c74-8afc-52b7ea635d7f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1778,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "699f9abb-cf01-4853-b44c-360a324c622a"
		},
		"d25445f9-ba83-4faf-9418-f9f687b6eaa0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1878,42 1928,42",
			"sourceSymbol": "555ec187-3f3b-4c74-8afc-52b7ea635d7f",
			"targetSymbol": "8336df0d-a5b0-4dae-9f7e-434e865a267b",
			"object": "5378b582-fcfb-4858-94d5-2e9d79112f49"
		},
		"8336df0d-a5b0-4dae-9f7e-434e865a267b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1928,
			"y": 21,
			"object": "654e0428-de29-479c-ae44-a4b01b8720ac"
		},
		"f5a49e05-498b-4579-97fe-90c838fc2450": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1970,42 2020,42",
			"sourceSymbol": "8336df0d-a5b0-4dae-9f7e-434e865a267b",
			"targetSymbol": "b8dcdad0-407c-4395-a1d3-b2e032ee1b1b",
			"object": "75731a06-b3b3-4da9-b40d-ff1de261df38"
		},
		"b8dcdad0-407c-4395-a1d3-b2e032ee1b1b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 2020,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "5270257f-c653-4f9d-aa14-03315bd72a29"
		},
		"52c22316-c5fd-459f-9e6f-0a9a2ab98c93": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2120,42 2170,42",
			"sourceSymbol": "b8dcdad0-407c-4395-a1d3-b2e032ee1b1b",
			"targetSymbol": "4081fab2-5dca-4db4-8307-0efffd5c1779",
			"object": "27a014d3-1cf3-425d-84f1-8b07b6bf8a44"
		},
		"4081fab2-5dca-4db4-8307-0efffd5c1779": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 2170,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "57327c7c-41f3-49de-881b-fd29839394f1"
		},
		"2380ef6d-40f4-42b2-aa01-dccab99896f6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2270,42 2320,42",
			"sourceSymbol": "4081fab2-5dca-4db4-8307-0efffd5c1779",
			"targetSymbol": "dea69bef-b868-4df7-9fc1-492f73dbe11a",
			"object": "719f6c6a-6cba-40b5-a663-e70405a5e20e"
		},
		"dea69bef-b868-4df7-9fc1-492f73dbe11a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 2320,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "70d1f5c8-4ffb-41f1-8206-e4903a1f8bcd"
		},
		"f2f9f812-7de8-4b7d-9430-f0bb0a4511fd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "a9e00487-9a5f-4a1c-9b81-01ae096610c5"
		},
		"eaaaed15-dfe7-4e81-a9ef-57b2d820246e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "f2f9f812-7de8-4b7d-9430-f0bb0a4511fd",
			"targetSymbol": "cfa63e2a-8a69-4ff8-8b4f-1b4910e1f031",
			"object": "af9f8b64-d4ed-4877-955b-e92fba212936"
		},
		"6d40f58f-8f5d-49de-b57a-fae48f18afc9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "860,42 860,235 1403.5,235",
			"sourceSymbol": "4795f4b9-3a78-4bb7-8b39-9a9b81110894",
			"targetSymbol": "65c8b7ec-069b-4429-b668-aff6cbc510ff",
			"object": "e41dce41-e894-4a92-888c-f9e461617703"
		},
		"5a45b934-8b44-47ff-92f3-b01480320bd3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1408,42 1408,132 1416,132 1416,222",
			"sourceSymbol": "96ee170f-ac17-4413-8c94-359e5c2b990a",
			"targetSymbol": "65c8b7ec-069b-4429-b668-aff6cbc510ff",
			"object": "57969ec8-d05a-4c7d-a349-17fa02990fb1"
		},
		"ba2657fe-151a-4528-86ee-58cd59371ab8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1964,42 1964,235 1426,235",
			"sourceSymbol": "8336df0d-a5b0-4dae-9f7e-434e865a267b",
			"targetSymbol": "65c8b7ec-069b-4429-b668-aff6cbc510ff",
			"object": "a2f69f7f-99af-449a-8e47-edd9108a7401"
		},
		"3cc643b4-ba9e-48c0-a1e8-5970fd104c38": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1366,
			"y": 918,
			"width": 100,
			"height": 60,
			"object": "2f05bb4f-d6eb-4bfa-9c1c-15f5f3483c26"
		},
		"ce4f8825-3ebd-4c84-aaa2-d03f2cafa0cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1366,
			"y": 586,
			"width": 100,
			"height": 60,
			"object": "cb300c83-355d-46e8-8e4c-63b0ea8de294"
		},
		"a67d50d8-0288-42b2-9437-953d3262eb17": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1366,
			"y": 696,
			"width": 100,
			"height": 60,
			"object": "fb1424c1-5fdd-4767-862f-f50e960e1848"
		},
		"ce4e4156-da8b-426d-bcd8-a45a20dac0b7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1416,616 1416,726",
			"sourceSymbol": "ce4f8825-3ebd-4c84-aaa2-d03f2cafa0cb",
			"targetSymbol": "a67d50d8-0288-42b2-9437-953d3262eb17",
			"object": "fb704f0f-607b-4b99-be4d-960b91e84557"
		},
		"6e1ab1f2-a0e6-4d51-94f4-e7feeccf5b65": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1366,
			"y": 801,
			"width": 100,
			"height": 60,
			"object": "ef38d172-d3ee-493d-a307-960933597197"
		},
		"52f00b81-be0d-4748-b321-f3f7b60493fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1416,726 1416,831",
			"sourceSymbol": "a67d50d8-0288-42b2-9437-953d3262eb17",
			"targetSymbol": "6e1ab1f2-a0e6-4d51-94f4-e7feeccf5b65",
			"object": "1410e82b-40e8-47d7-865c-1bfc6f8644f5"
		},
		"1144ffb3-71f0-4346-888b-276bcf7c1851": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1392.5,
			"y": 1014.5,
			"width": 35,
			"height": 35,
			"object": "484f8eab-c14b-40ed-8c87-210aeb099d98"
		},
		"1c8a9619-c176-4fc2-b858-7f21d071a84f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1416,831 1416,960",
			"sourceSymbol": "6e1ab1f2-a0e6-4d51-94f4-e7feeccf5b65",
			"targetSymbol": "3cc643b4-ba9e-48c0-a1e8-5970fd104c38",
			"object": "4f57141e-6945-4bd6-a861-ff881b53e821"
		},
		"970f4086-f943-447d-a8fa-7b4b13eb7a69": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1416,948 1416,1031",
			"sourceSymbol": "3cc643b4-ba9e-48c0-a1e8-5970fd104c38",
			"targetSymbol": "1144ffb3-71f0-4346-888b-276bcf7c1851",
			"object": "830e1b9d-29d7-4393-912e-4667a24af5a8"
		},
		"65c8b7ec-069b-4429-b668-aff6cbc510ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1395,
			"y": 201,
			"object": "e89767ed-ab69-4c61-9294-2e9e6d265c82"
		},
		"1f4afca2-aa29-4007-820d-492c1e7688e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1416,222 1416,414.5 1193,414.5 1193,619",
			"sourceSymbol": "65c8b7ec-069b-4429-b668-aff6cbc510ff",
			"targetSymbol": "9f631b0d-a635-4ca5-8353-9a5333a8b916",
			"object": "7db3e863-07f5-43a0-a7e9-b47dd00225d9"
		},
		"5c509215-18bc-4bcd-8d59-6fa073070a47": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1416,222 1416,586.5",
			"sourceSymbol": "65c8b7ec-069b-4429-b668-aff6cbc510ff",
			"targetSymbol": "ce4f8825-3ebd-4c84-aaa2-d03f2cafa0cb",
			"object": "ee276aed-397a-4844-a0e2-e6ea3f047e13"
		},
		"7e152eca-d33d-4066-9509-0aa69db3fb9e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2369,42 2369,594 1444,594",
			"sourceSymbol": "dea69bef-b868-4df7-9fc1-492f73dbe11a",
			"targetSymbol": "ce4f8825-3ebd-4c84-aaa2-d03f2cafa0cb",
			"object": "fc543052-b580-46eb-bd93-bf3385017002"
		},
		"9ed95a6c-0dce-4f94-b6ef-a5dc14fe7ff4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 352,
			"y": 159,
			"object": "5396efad-d649-4fbe-b0e8-c3175a54cc8c"
		},
		"ab39566c-e2dd-4d5a-95af-8f584ecd1cbb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "373,180 436.5,180 436.5,140 501,140",
			"sourceSymbol": "9ed95a6c-0dce-4f94-b6ef-a5dc14fe7ff4",
			"targetSymbol": "57c5601c-3ff2-46d0-a878-a5d2501c1c8a",
			"object": "e0f73b91-28f9-4f8d-af57-1042b23db9fd"
		},
		"8831899b-fc22-45f3-9506-d99b3dd2cb0e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "373,180 894.5,180 894.5,206 1406,206",
			"sourceSymbol": "9ed95a6c-0dce-4f94-b6ef-a5dc14fe7ff4",
			"targetSymbol": "65c8b7ec-069b-4429-b668-aff6cbc510ff",
			"object": "f2441f6a-1bf3-495b-93d0-498810295018"
		},
		"57c5601c-3ff2-46d0-a878-a5d2501c1c8a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 479,
			"y": 106,
			"width": 100,
			"height": 60,
			"object": "e2f47ca1-ed04-428a-b2f6-7e0a9e904742"
		},
		"f4ab79bb-515c-496b-8228-84510996b63c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 640,
			"y": 115,
			"object": "399d18a1-54b0-4028-ac18-b036d405d9a6"
		},
		"89656c5d-5157-4d04-8dfd-17786fe8d2b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "661,136 661,92 484,92 484,70",
			"sourceSymbol": "f4ab79bb-515c-496b-8228-84510996b63c",
			"targetSymbol": "ce6c4dd3-9beb-42d5-9834-c8c81cd36c6f",
			"object": "7b7833b9-c335-4beb-9f91-8c09a23e585e"
		},
		"69d036af-0c03-416d-a521-4703a2db19bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "661,136 1487,136 1487,222 1436.5,222",
			"sourceSymbol": "f4ab79bb-515c-496b-8228-84510996b63c",
			"targetSymbol": "65c8b7ec-069b-4429-b668-aff6cbc510ff",
			"object": "48de6691-8a5c-4bd5-8128-43f315627180"
		},
		"4417ce06-8601-4aa8-bbda-1e0ea0e7d9ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "529,136 661,136",
			"sourceSymbol": "57c5601c-3ff2-46d0-a878-a5d2501c1c8a",
			"targetSymbol": "f4ab79bb-515c-496b-8228-84510996b63c",
			"object": "e934a992-ff86-46f8-8058-88a36c492c67"
		},
		"9f631b0d-a635-4ca5-8353-9a5333a8b916": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1146,
			"y": 586,
			"width": 100,
			"height": 60,
			"object": "402171e3-dfb4-450d-89f9-1a3f97349bd5"
		},
		"4ad22d9d-8a4e-4237-95c3-f62c25e8b6be": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1146,
			"y": 701,
			"width": 100,
			"height": 60,
			"object": "88568fe2-85aa-4a4e-ba99-e3102ea0c50b"
		},
		"d6d7f546-b5e6-440d-a36b-dca7a0f34d23": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1196,616 1196,731",
			"sourceSymbol": "9f631b0d-a635-4ca5-8353-9a5333a8b916",
			"targetSymbol": "4ad22d9d-8a4e-4237-95c3-f62c25e8b6be",
			"object": "82baf4a6-974f-4e4e-a4d1-374f57515915"
		},
		"01c1c9dc-8d42-409a-bb8a-96b3e1e638be": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1151,
			"y": 840,
			"width": 100,
			"height": 60,
			"object": "5427aff2-0a98-4291-8b3f-fa86ea54a9dd"
		},
		"40444c76-e9ce-4d89-b7b9-847d2cba529f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1201,742 1201,840.5",
			"sourceSymbol": "4ad22d9d-8a4e-4237-95c3-f62c25e8b6be",
			"targetSymbol": "01c1c9dc-8d42-409a-bb8a-96b3e1e638be",
			"object": "d2e5e14c-3a04-43ae-94d0-7003fac2a7fa"
		},
		"fe5543f8-03bf-4f2a-80d8-9279b50bfbff": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 46,
			"startevent": 1,
			"endevent": 4,
			"usertask": 7,
			"servicetask": 7,
			"scripttask": 7,
			"mailtask": 2,
			"exclusivegateway": 6
		},
		"9641de65-3be3-426b-af5c-459a67d7ac88": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.mailAdress.mail}",
			"subject": "超額審批通知",
			"reference": "/webcontent/workflow_salescredit/CreditMailBody.html",
			"id": "maildefinition1"
		},
		"b43e498b-b15b-4e6d-ba6d-142793b26440": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.mailAdress.mail}",
			"subject": "超額審批通知",
			"reference": "/webcontent/workflow_salescredit/RollBackBody.html",
			"id": "maildefinition2"
		},
		"7669c76b-eb09-4591-8666-e4e775925ea9": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "流程结束"
		},
		"a4fe1eb1-d7cc-4d2c-97ca-abf8f014dfcb": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1183,
			"y": 947.5,
			"width": 35,
			"height": 35,
			"object": "7669c76b-eb09-4591-8666-e4e775925ea9"
		},
		"2c1de1e9-fc96-4d8a-ad2d-5e9ed40663ec": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow46",
			"name": "SequenceFlow46",
			"sourceRef": "5427aff2-0a98-4291-8b3f-fa86ea54a9dd",
			"targetRef": "7669c76b-eb09-4591-8666-e4e775925ea9"
		},
		"2382055f-7028-451d-b2d9-30b3b3d36f14": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1200.75,870 1200.75,965",
			"sourceSymbol": "01c1c9dc-8d42-409a-bb8a-96b3e1e638be",
			"targetSymbol": "a4fe1eb1-d7cc-4d2c-97ca-abf8f014dfcb",
			"object": "2c1de1e9-fc96-4d8a-ad2d-5e9ed40663ec"
		}
	}
}