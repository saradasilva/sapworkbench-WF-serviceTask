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
				},
				"177e58e8-09de-4a18-94d2-3b037a814cc5": {
					"name": "Split"
				},
				"e42fa8bd-a50f-4834-a67a-73598308d59d": {
					"name": "UserTask2"
				},
				"f568da05-c60e-4d13-9eab-82fb5c81016f": {
					"name": "ParallelGateway2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"6a608319-ef2b-4c7b-888e-dcbf51b437f1": {
					"name": "SequenceFlow2"
				},
				"d9262e1f-1993-430e-876a-53065fd54ffc": {
					"name": "SequenceFlow4"
				},
				"49159b74-644a-4b88-a745-d6bd33011f5c": {
					"name": "SequenceFlow6"
				},
				"cb59e86d-32ae-4375-b9a9-3f8869e626d6": {
					"name": "SequenceFlow7"
				},
				"3bbbe7f9-0c9d-4dfa-879a-41811b8b00b2": {
					"name": "SequenceFlow8"
				},
				"b675f405-9c06-4d65-8a7c-7f055adfed4e": {
					"name": "SequenceFlow13"
				},
				"c998727e-755e-40f9-9432-d255d1006e81": {
					"name": "SequenceFlow15"
				},
				"7f8ab340-982c-4095-8894-c7e53ceee043": {
					"name": "SequenceFlow16"
				},
				"fbdcb02a-a057-49f7-897d-2fd200c3c99c": {
					"name": "SequenceFlow17"
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
			"subject": "Mis requests 1",
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
		"d9262e1f-1993-430e-876a-53065fd54ffc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "432c2791-ca9e-446b-a824-203debb3e447",
			"targetRef": "177e58e8-09de-4a18-94d2-3b037a814cc5"
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
				"3e0fa4d5-b082-4ec6-b627-4911bec15267": {},
				"3d171f5e-5d4a-493e-9b6e-f8d0055c5776": {},
				"67b19c8e-da13-400d-bbb8-c43eeb5dfda1": {},
				"9e72f550-c737-4dd9-a1b4-812d2f54a9d6": {},
				"5c305f0f-b70c-46c7-80f9-5ead60cf9edd": {},
				"e308fae7-9b50-4449-b8c0-20d95c1812d4": {},
				"54ec8377-f23d-486b-8a72-60ce20e11594": {},
				"77c1b148-8d1a-4f53-89bf-494a46e00344": {},
				"e0bf2a3c-db70-4430-bc4f-419d945ca74a": {},
				"a185913a-2c08-4b66-b642-b36ae71da045": {},
				"4d58a589-2f2f-477e-a460-b19103ba2b18": {},
				"05e9d245-9794-4a14-86fd-9298b0a0b3c8": {},
				"a1a05393-68e1-42f2-9051-fd6d1a34166e": {}
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
			"x": 993,
			"y": 82,
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
			"x": 705,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca"
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
			"points": "502,117.5 636,117.5",
			"sourceSymbol": "3e0fa4d5-b082-4ec6-b627-4911bec15267",
			"targetSymbol": "e308fae7-9b50-4449-b8c0-20d95c1812d4",
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
			"points": "354,141.5 354,198.5 739,198.5 739,147.5",
			"sourceSymbol": "67b19c8e-da13-400d-bbb8-c43eeb5dfda1",
			"targetSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"object": "cb59e86d-32ae-4375-b9a9-3f8869e626d6"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"hubapireference": 3,
			"sequenceflow": 17,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 1,
			"parallelgateway": 2
		},
		"177e58e8-09de-4a18-94d2-3b037a814cc5": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "Split"
		},
		"e308fae7-9b50-4449-b8c0-20d95c1812d4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 615,
			"y": 96,
			"object": "177e58e8-09de-4a18-94d2-3b037a814cc5"
		},
		"3bbbe7f9-0c9d-4dfa-879a-41811b8b00b2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "177e58e8-09de-4a18-94d2-3b037a814cc5",
			"targetRef": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca"
		},
		"54ec8377-f23d-486b-8a72-60ce20e11594": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "636,117.5 755,117.5",
			"sourceSymbol": "e308fae7-9b50-4449-b8c0-20d95c1812d4",
			"targetSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"object": "3bbbe7f9-0c9d-4dfa-879a-41811b8b00b2"
		},
		"e42fa8bd-a50f-4834-a67a-73598308d59d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Parallel task 2",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/myServiceWF/parallelform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "parallelform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "UserTask2"
		},
		"77c1b148-8d1a-4f53-89bf-494a46e00344": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 705,
			"y": -49,
			"width": 100,
			"height": 60,
			"object": "e42fa8bd-a50f-4834-a67a-73598308d59d"
		},
		"b675f405-9c06-4d65-8a7c-7f055adfed4e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "177e58e8-09de-4a18-94d2-3b037a814cc5",
			"targetRef": "e42fa8bd-a50f-4834-a67a-73598308d59d"
		},
		"e0bf2a3c-db70-4430-bc4f-419d945ca74a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "637,102 637,-13 705,-13",
			"sourceSymbol": "e308fae7-9b50-4449-b8c0-20d95c1812d4",
			"targetSymbol": "77c1b148-8d1a-4f53-89bf-494a46e00344",
			"object": "b675f405-9c06-4d65-8a7c-7f055adfed4e"
		},
		"f568da05-c60e-4d13-9eab-82fb5c81016f": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "ParallelGateway2"
		},
		"a185913a-2c08-4b66-b642-b36ae71da045": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 875,
			"y": 96,
			"object": "f568da05-c60e-4d13-9eab-82fb5c81016f"
		},
		"c998727e-755e-40f9-9432-d255d1006e81": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "e717a0bb-5e10-45d9-9de3-76ef3a72a3ca",
			"targetRef": "f568da05-c60e-4d13-9eab-82fb5c81016f"
		},
		"4d58a589-2f2f-477e-a460-b19103ba2b18": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "799,117 888,117",
			"sourceSymbol": "b94c8a6c-fb9e-426d-a37f-e61e57c0467b",
			"targetSymbol": "a185913a-2c08-4b66-b642-b36ae71da045",
			"object": "c998727e-755e-40f9-9432-d255d1006e81"
		},
		"7f8ab340-982c-4095-8894-c7e53ceee043": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "e42fa8bd-a50f-4834-a67a-73598308d59d",
			"targetRef": "f568da05-c60e-4d13-9eab-82fb5c81016f"
		},
		"05e9d245-9794-4a14-86fd-9298b0a0b3c8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "798,-16 798,53.75 896,53.75 896,96.5",
			"sourceSymbol": "77c1b148-8d1a-4f53-89bf-494a46e00344",
			"targetSymbol": "a185913a-2c08-4b66-b642-b36ae71da045",
			"object": "7f8ab340-982c-4095-8894-c7e53ceee043"
		},
		"fbdcb02a-a057-49f7-897d-2fd200c3c99c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "f568da05-c60e-4d13-9eab-82fb5c81016f",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"a1a05393-68e1-42f2-9051-fd6d1a34166e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "906,124 955,124 955,102 1000,102",
			"sourceSymbol": "a185913a-2c08-4b66-b642-b36ae71da045",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "fbdcb02a-a057-49f7-897d-2fd200c3c99c"
		}
	}
}