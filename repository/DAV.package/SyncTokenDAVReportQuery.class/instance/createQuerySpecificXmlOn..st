queryBuilding
createQuerySpecificXmlOn: aXMLWriter

	aXMLWriter
		startElement: 'd:sync-collection' attributeList: self namespacesDictionary;
		endTag.
	self createSyncTokenXmlOn: aXMLWriter.
	self createLimitXmlOn: aXMLWriter.
	self createPropertiesXmlOn: aXMLWriter.
	
	aXMLWriter
		endTag: 'd:sync-collection'