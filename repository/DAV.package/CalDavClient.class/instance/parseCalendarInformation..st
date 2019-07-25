parsing - core
parseCalendarInformation: responseContent

	| propertyNodes |
	
	propertyNodes := self parseXML: responseContent.
	
	^ self createCalendarPropertyLookup: propertyNodes