tests - url handling
testEventUrl

	| eventUrl |
	
	self calendar url: 'https://calendarUrl/remote' asUrl.
	eventUrl := self client eventUrlFor: self calendar withId: 'eventId'.
	
	self assert: 'https://calendarUrl/remote/eventId.ics' asURI equals: eventUrl
