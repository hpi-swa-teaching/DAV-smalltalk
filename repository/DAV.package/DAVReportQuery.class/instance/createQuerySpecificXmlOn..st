accessing
createQuerySpecificXmlOn: aXMLWriter

	aXMLWriter
		startElement: self queryType attributeList: self namespacesDictionary;
		endTag.
	
	self createPropertiesXmlOn: aXMLWriter.
	self createFilterXmlOn: aXMLWriter.
	self createURLXmlOn: aXMLWriter.
		
	aXMLWriter
		endTag: self queryType.