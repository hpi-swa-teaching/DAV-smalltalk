requests
parseEventICalData: anEventNode

	| properties propertyStatus resultProperties iCalString |
	propertyStatus := anEventNode firstTagNamed: #'d:propstat'.
	(propertyStatus firstTagNamed: #'d:status') contents first string = 'HTTP/1.1 200 OK'
		ifFalse: [CalDavGenericException signal: 'There was an error retrieving information for an event'].
		
	properties := (propertyStatus firstTagNamed: #'d:prop') elements.
	resultProperties := Dictionary newFrom: {#urlLocalPart -> (anEventNode firstTagNamed: #'d:href') contents first string}.
	properties 
		select: [:property | property contents notEmpty]
		thenDo: [:property |
			resultProperties at: property name asSymbol put: property contents first string ].
	
	iCalString := (propertyStatus firstTagNamed: #'cal:calendar-data') contents first string.
		
	resultProperties at: #calendarData put: (self parseICalData: iCalString withInternetLineEndings). 
	
	^ resultProperties