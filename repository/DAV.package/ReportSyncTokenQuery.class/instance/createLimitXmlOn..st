as yet unclassified
createLimitXmlOn: aXMLWriter

	self limit isNil
		ifFalse: [ 
			aXMLWriter
				startTag: 'D:limit';
				endTag;
				startTag: 'D:nresults';
				endTag.
			aXMLWriter stream nextPutAll: self limit asString.
			aXMLWriter
				 endTag: 'D:nresults';
				 endTag: 'D:limit'.]
		