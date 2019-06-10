queryBuilding
createLimitXmlOn: aXMLWriter

	self limit isNil
		ifFalse: [ 
			aXMLWriter
				startTag: 'd:limit';
				endTag;
				startTag: 'd:nresults';
				endTag.
			aXMLWriter stream nextPutAll: self limit asString.
			aXMLWriter
				 endTag: 'd:nresults';
				 endTag: 'd:limit'.]
		