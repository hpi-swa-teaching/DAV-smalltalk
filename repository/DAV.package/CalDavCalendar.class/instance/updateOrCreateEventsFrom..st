updating
updateOrCreateEventsFrom: iCalData

	iCalData do: [ :elem |
		| url etag object iCalendar |
		url := self buildUrlFor: (elem at: #urlLocalPart).
		etag := elem at: #'d:getetag'.
		object := self eventsDictionary at: (elem at: #urlLocalPart ) ifAbsent: [
			CalDavEvent newIn: self withUrl: url.].
		iCalendar := elem at: #calendarData. 
		object etag: etag.
		object serverCalendar: iCalendar.
		object serverData: iCalendar events first.
		
		self addEvent: object.
		].	