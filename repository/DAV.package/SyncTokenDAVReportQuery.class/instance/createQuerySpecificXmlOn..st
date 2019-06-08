queryBuilding
createQuerySpecificXmlOn: aXMLWriter

	aXMLWriter
		startElement: 'D:sync-collection' attributeList: self namespacesDictionary;
		endTag.
	self createSyncTokenXmlOn: aXMLWriter.
	self createLimitXmlOn: aXMLWriter.
	self createPropertiesXmlOn: aXMLWriter.
	
	aXMLWriter
		endTag: 'D:sync-collection'