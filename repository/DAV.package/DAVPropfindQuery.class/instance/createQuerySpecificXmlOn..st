queryBuilding
createQuerySpecificXmlOn: aXMLWriter
	
	aXMLWriter
		startElement: 'd:propfind' attributeList: self namespacesDictionary;
		endTag.
	
	self createPropertiesXmlOn: aXMLWriter.
	
	aXMLWriter
		endTag: 'd:propfind'