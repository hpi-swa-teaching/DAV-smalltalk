parsing - core
parseEventICalData: anEventNode

	| eventProperties iCalString |
		
	iCalString := self retrieveICalString: anEventNode.
	eventProperties := self parseEventInformation: anEventNode.
	eventProperties at: #calendarData put: (self parseICalData: iCalString).
	eventProperties removeKey: #'cal:calendar-data' ifAbsent: [].
	eventProperties removeKey: #'calendar-data' ifAbsent: [].

	^ eventProperties