tests
testAssignedEventSchouldBeClear

	| id event eventUrl |
	
	id := 'eventId'.
	eventUrl := 'eventUrl'.
	event := self calendar newEvent.
	
	self assert: (event isDirty not) 