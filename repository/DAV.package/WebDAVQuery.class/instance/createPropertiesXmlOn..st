queryBuilding
createPropertiesXmlOn: aXMLWriter
	
	self properties ifNotEmpty: [
		aXMLWriter
			startTag: 'd:prop';
			endTag.
		self properties do: [:propertyName |
			aXMLWriter 
				startTag: propertyName;
				endEmptyTag: propertyName ].
				
		aXMLWriter
			endTag: 'd:prop' ]