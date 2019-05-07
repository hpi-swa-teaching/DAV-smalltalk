queryBuilding
writeQuerySpecificContentOn: aXMLWriter
	
	aXMLWriter
		startElement: 'D:propfind' attributeList: self namespacesDictionary;
		endTag.
	
	self writePropertiesOn: aXMLWriter.
	
	aXMLWriter
		endTag: 'D:propfind'