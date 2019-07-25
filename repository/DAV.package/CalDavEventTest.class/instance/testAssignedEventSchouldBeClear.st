tests
testAssignedEventSchouldBeClear

	| id event1 event2 eventUrl |
	
	id := 'eventId'.
	eventUrl := 'eventUrl'.
	event1 := self calendar newEvent.
	event2 := CalDavEvent newIn: self calendar withId: id withUrl: eventUrl.
	
	self assert: (event1 isDirty not). 
	self assert: (event2 isDirty not)