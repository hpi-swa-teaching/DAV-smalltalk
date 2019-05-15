queryBuilding
createSyncTokenXmlOn: aXMLWriter

	self syncToken isNil
		ifTrue: [
			aXMLWriter 
				startTag: 'D:sync-token';
				endEmptyTag: 'D:sync-token'.]
		ifFalse: [ 
			aXMLWriter
				startTag: 'D:sync-token';
				endTag: 'D:sync-token'.
			aXMLWriter stream nextPutAll: self syncToken.
			aXMLWriter endTag: 'D:sync-token'.]
		