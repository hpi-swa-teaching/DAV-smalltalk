tests
testNewEventSchouldBeDirty

	| event1 event2 eventUrl |
	
	eventUrl := 'eventUrl'.
	event1 := CalDavEvent newIn: self calendar withUrl: eventUrl.
	event2 := CalDavEvent new.
	
	self assert: event1 isDirty.
	self assert: event2 isDirty