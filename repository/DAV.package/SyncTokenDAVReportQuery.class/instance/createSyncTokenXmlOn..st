queryBuilding
createSyncTokenXmlOn: aXMLWriter

	self syncToken isNil
		ifTrue: [
			aXMLWriter 
				startTag: 'd:sync-token';
				endEmptyTag: 'd:sync-token'.]
		ifFalse: [ 
			aXMLWriter
				startTag: 'd:sync-token';
				endTag.
			aXMLWriter stream nextPutAll: self syncToken.
			aXMLWriter endTag: 'd:sync-token'.]
		