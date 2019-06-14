queryBuilding
createUrlXmlOn: aXMLWriter

	objectURLs ifNotEmpty: [ objectURLs do:
		[ :objectURL |
			aXMLWriter
					startTag: 'd:href';
					endTag.
			aXMLWriter stream nextPutAll: objectURL.
			aXMLWriter endTag: 'd:href']]