queryBuilding
writePropertiesOn: aXMLWriter
	
	aXMLWriter
		startTag: 'D:prop';
		endTag.
	
	self properties do: [:propertyName |
		aXMLWriter 
			startTag: propertyName;
			endEmptyTag: propertyName. ].
		
	aXMLWriter
		endTag: 'D:prop'.