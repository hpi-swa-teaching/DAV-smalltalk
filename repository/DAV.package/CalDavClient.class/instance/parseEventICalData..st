parsing
parseEventICalData: anEventNode

	| resultProperties iCalString |
	
	resultProperties := self parseEventInformation: anEventNode.
	
	iCalString := (anEventNode firstTagNamed: #'cal:calendar-data') contents first string.
	resultProperties at: #calendarData put: (self parseICalData: iCalString withInternetLineEndings).
	resultProperties removeKey: #'cal:calendar-data' ifAbsent: [].	
	
	^ resultProperties