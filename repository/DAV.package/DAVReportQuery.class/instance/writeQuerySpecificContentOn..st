queryBuilding
writeQuerySpecificContentOn: aXMLWriter

	aXMLWriter
		startElement: 'c:calendar-query' attributeList: self namespacesDictionary;
		endTag.
	
	self writePropertiesOn: aXMLWriter.
		
	aXMLWriter
		startTag: 'c:filter';
		endTag;
		startElement: 'c:comp-filter' attributeList: self filtersDictionary;
		endTag;
		endTag: 'c:comp-filter';
		endTag: 'c:filter';
		endTag: 'c:calendar-query'