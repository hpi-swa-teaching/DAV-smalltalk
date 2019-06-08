queryBuilding
createPropertiesXmlOn: aXMLWriter
	
	aXMLWriter
		startTag: 'd:prop';
		endTag.
	self properties notNil
	ifTrue:
		[self properties do: [:propertyName |
			aXMLWriter 
				startTag: propertyName;
				endEmptyTag: propertyName. ]].
			
	aXMLWriter
		endTag: 'd:prop'.