queryBuilding
createQuerySpecificXmlOn: aXMLWriter
	
	aXMLWriter
		startElement: 'D:propfind' attributeList: self namespacesDictionary;
		endTag.
	
	self createPropertiesXmlOn: aXMLWriter.
	
	aXMLWriter
		endTag: 'D:propfind'