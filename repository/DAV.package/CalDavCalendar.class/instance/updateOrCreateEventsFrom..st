updating
updateOrCreateEventsFrom: iCalData

	iCalData do: [ :elem |
		| url etag event iCalendar |
		url := self buildUrlFrom: (elem at: #urlLocalPart).
		etag := elem at: #'getetag'.
		iCalendar := elem at: #calendarData.
		 
		event := self eventsDictionary at: (elem at: #urlLocalPart ) ifAbsent: [
			CalDavEvent newIn: self withUrl: url.].
		event etag: etag.
		event serverCalendar: iCalendar.
		event serverData: iCalendar events first.
		event setClean.
		self addEvent: event.
		]