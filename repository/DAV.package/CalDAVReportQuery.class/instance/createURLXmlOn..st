queryBuilding
createURLXmlOn: aXMLWriter

	objectURLs ifNotNilDo: [ :objectURL |
		aXMLWriter
				startTag: 'd:href';
				endTag: 'd:href'.
		aXMLWriter stream nextPutAll: objectURL.
		aXMLWriter endTag: 'd:href']