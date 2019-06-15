as yet unclassified
eventUrlFor: aCalendar withId: eventId

	^ (aCalendar url asString , '/' , eventId encodeForHTTP , '.ics') asURI
	