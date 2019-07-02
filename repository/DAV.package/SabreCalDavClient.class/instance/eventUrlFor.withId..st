events handling
eventUrlFor: aCalendar withId: eventId

	^ (aCalendar url asString , '/' , eventId encodeForHTTP , '.ics') asURI
	