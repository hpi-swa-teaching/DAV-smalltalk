queryBuilding
createPropertiesXmlOn: aXMLWriter
	
	aXMLWriter
		startTag: 'D:prop';
		endTag.
	self properties notNil
	ifTrue:
		[self properties do: [:propertyName |
			aXMLWriter 
				startTag: propertyName;
				endEmptyTag: propertyName. ]].
			
	aXMLWriter
		endTag: 'D:prop'.