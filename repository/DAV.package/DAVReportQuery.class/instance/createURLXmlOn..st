accessing
createURLXmlOn: aXMLWriter

	objectURLs isNil
	ifFalse: [
		objectURLs do: [ :objectURL |
			aXMLWriter
					startTag: 'd:href';
					endTag: 'd:href'.
			aXMLWriter stream nextPutAll: objectURL.
			aXMLWriter endTag: 'd:href']]