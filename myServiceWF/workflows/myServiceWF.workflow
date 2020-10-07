{
	"contents": {
		"fac5f704-7590-4561-9934-0abe5804d899": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "myServiceWF",
			"subject": "myServiceWF",
			"name": "myServiceWF",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"61dc8f3b-2893-4015-aa84-15aca43a528a": {
					"name": "Get EmpEmployment"
				},
				"e717a0bb-5e10-45d9-9de3-76ef3a72a3ca": {
					"name": "Display requests"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"6a608319-ef2b-4c7b-888e-dcbf51b437f1": {
					"name": "SequenceFlow2"
				},
				"39282227-1810-403a-8da4-405b85227b1e": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"61dc8f3b-2893-4015-aa84-15aca43a528a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "APIPortal",
			"path": "EmpEmployment?$top=2",
			"httpMethod": "GET",
			"responseVariable": "${context.EmpEmployment}",
			"id": "servicetask1",
			"name": "Get EmpEmployment"
		},
		"e717a0bb-5e10-45d9-9de3-76ef3a72a3ca": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Mis requests",
			"priority": "LOW",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/myServiceWF/displayRequests.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "displayrequests"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Display requests"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "61dc8f3b-2893-4015-aa84-15aca43a528a"
		},
		"6a608319-ef2b-4c7b-888e-dcbf51b437f1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "61dc8f3b-2893-4015-aa84-15aca43a528a",
			"targetRef": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca"
		},
		"39282227-1810-403a-8da4-405b85227b1e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"19550000-12f8-48e2-84e8-4b18896dae7d": {},
				"52f810d8-0c56-4ccb-8841-1dea9bfe9e4d": {},
				"b94c8a6c-fb9e-426d-a37f-e61e57c0467b": {},
				"b4c05841-0fa4-4283-813e-1d0d9826c724": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 600,
			"y": 105,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 231,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "19550000-12f8-48e2-84e8-4b18896dae7d",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"19550000-12f8-48e2-84e8-4b18896dae7d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 181,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "61dc8f3b-2893-4015-aa84-15aca43a528a"
		},
		"52f810d8-0c56-4ccb-8841-1dea9bfe9e4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "231,120.5 419,120.5",
			"sourceSymbol": "19550000-12f8-48e2-84e8-4b18896dae7d",
			"targetSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"object": "6a608319-ef2b-4c7b-888e-dcbf51b437f1"
		},
		"b94c8a6c-fb9e-426d-a37f-e61e57c0467b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 369,
			"y": 93,
			"width": 100,
			"height": 60,
			"object": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca"
		},
		"b4c05841-0fa4-4283-813e-1d0d9826c724": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "419,122.75 617.5,122.75",
			"sourceSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "39282227-1810-403a-8da4-405b85227b1e"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"hubapireference": 3,
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		}
	}
}