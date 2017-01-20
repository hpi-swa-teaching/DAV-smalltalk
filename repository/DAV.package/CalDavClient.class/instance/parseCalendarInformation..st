requests
parseCalendarInformation: responseContent

	| nodes resourceTypes result |
	nodes := self parseXML: responseContent.

	self flag: #TODO. "This is brittle as it assumes that the prefixes stay the same for namespaces, e.g. D: for DAV "
	resourceTypes := (nodes firstTagNamed: #'D:resourcetype') elements.
	
	((resourceTypes collect: [:t | t name]) asSet = #(D:collection caldav:calendar) asSet) 
		ifFalse: [CalDavInvalidResponse signal: 'Not a valid response for a calendar request'].
	
	
	result := CalDavCalendar calendarFieldsMapping values
		collect: [:elementName | (nodes firstTagNamed: elementName)
									ifNotNil: [:element | elementName -> element contentString]].
	^ Dictionary newFrom: (result reject: [:o | o isNil]) 