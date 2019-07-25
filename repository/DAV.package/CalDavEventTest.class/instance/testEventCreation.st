tests
testEventCreation

	| event |
	
	event := CalDavEvent newIn: self calendar withUrl: self calendarUrl.
	self assert: self calendar equals: event calendar.
	self assert: self calendarUrl equals: event url
	 