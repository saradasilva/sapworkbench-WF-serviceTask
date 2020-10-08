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
				},
				"432c2791-ca9e-446b-a824-203debb3e447": {
					"name": "Change creator"
				},
				"ff13024a-d7cf-4ef4-90ac-cc8cb92d9e74": {
					"name": "ExclusiveGateway1"
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
				},
				"d9262e1f-1993-430e-876a-53065fd54ffc": {
					"name": "SequenceFlow4"
				},
				"49159b74-644a-4b88-a745-d6bd33011f5c": {
					"name": "SequenceFlow6"
				},
				"cb59e86d-32ae-4375-b9a9-3f8869e626d6": {
					"name": "SequenceFlow7"
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
		"432c2791-ca9e-446b-a824-203debb3e447": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/myServiceWF/changeCreator.js",
			"id": "scripttask1",
			"name": "Change creator"
		},
		"ff13024a-d7cf-4ef4-90ac-cc8cb92d9e74": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "49159b74-644a-4b88-a745-d6bd33011f5c"
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
			"targetRef": "ff13024a-d7cf-4ef4-90ac-cc8cb92d9e74"
		},
		"39282227-1810-403a-8da4-405b85227b1e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d9262e1f-1993-430e-876a-53065fd54ffc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "432c2791-ca9e-446b-a824-203debb3e447",
			"targetRef": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca"
		},
		"49159b74-644a-4b88-a745-d6bd33011f5c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "ff13024a-d7cf-4ef4-90ac-cc8cb92d9e74",
			"targetRef": "432c2791-ca9e-446b-a824-203debb3e447"
		},
		"cb59e86d-32ae-4375-b9a9-3f8869e626d6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.notFormatted}",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "ff13024a-d7cf-4ef4-90ac-cc8cb92d9e74",
			"targetRef": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca"
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
				"b4c05841-0fa4-4283-813e-1d0d9826c724": {},
				"3e0fa4d5-b082-4ec6-b627-4911bec15267": {},
				"3d171f5e-5d4a-493e-9b6e-f8d0055c5776": {},
				"67b19c8e-da13-400d-bbb8-c43eeb5dfda1": {},
				"9e72f550-c737-4dd9-a1b4-812d2f54a9d6": {},
				"5c305f0f-b70c-46c7-80f9-5ead60cf9edd": {}
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
			"x": 902,
			"y": 100,
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
			"points": "231,119.5 354,119.5",
			"sourceSymbol": "19550000-12f8-48e2-84e8-4b18896dae7d",
			"targetSymbol": "67b19c8e-da13-400d-bbb8-c43eeb5dfda1",
			"object": "6a608319-ef2b-4c7b-888e-dcbf51b437f1"
		},
		"b94c8a6c-fb9e-426d-a37f-e61e57c0467b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 708,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca"
		},
		"b4c05841-0fa4-4283-813e-1d0d9826c724": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "758,117.75 919.5,117.75",
			"sourceSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "39282227-1810-403a-8da4-405b85227b1e"
		},
		"3e0fa4d5-b082-4ec6-b627-4911bec15267": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 452,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "432c2791-ca9e-446b-a824-203debb3e447"
		},
		"3d171f5e-5d4a-493e-9b6e-f8d0055c5776": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "502,118 758,118",
			"sourceSymbol": "3e0fa4d5-b082-4ec6-b627-4911bec15267",
			"targetSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"object": "d9262e1f-1993-430e-876a-53065fd54ffc"
		},
		"67b19c8e-da13-400d-bbb8-c43eeb5dfda1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 333,
			"y": 100,
			"object": "ff13024a-d7cf-4ef4-90ac-cc8cb92d9e74"
		},
		"9e72f550-c737-4dd9-a1b4-812d2f54a9d6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "354,100.5 354,50 413.25,50 413.25,100.5 487,100.5",
			"sourceSymbol": "67b19c8e-da13-400d-bbb8-c43eeb5dfda1",
			"targetSymbol": "3e0fa4d5-b082-4ec6-b627-4911bec15267",
			"object": "49159b74-644a-4b88-a745-d6bd33011f5c"
		},
		"5c305f0f-b70c-46c7-80f9-5ead60cf9edd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "354,141.5 354,198.5 742,198.5 742,147.5",
			"sourceSymbol": "67b19c8e-da13-400d-bbb8-c43eeb5dfda1",
			"targetSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"object": "cb59e86d-32ae-4375-b9a9-3f8869e626d6"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"hubapireference": 3,
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 1
		}
	}
}