queryBuilding
createQuerySpecificXmlOn: aXMLWriter

	aXMLWriter
		startElement: self type attributeList: self namespacesDictionary;
		endTag.
	
	self createPropertiesXmlOn: aXMLWriter.
	self createFilterXmlOn: aXMLWriter.
	self createURLXmlOn: aXMLWriter.
		
	aXMLWriter
		endTag: self type.