tests
testBuildUrlFor

	| href url |
	
	href := '/remote/eventId.ics'.
	url := self calendar buildUrlFor: href.
	
	self assert: 'calendarAuthority' equals: url authority asString.
	self assert: '/remote/eventId.ics' equals: url schemeSpecificPart.
	self assert: 'https://calendarAuthority/remote/eventId.ics' equals: url asString