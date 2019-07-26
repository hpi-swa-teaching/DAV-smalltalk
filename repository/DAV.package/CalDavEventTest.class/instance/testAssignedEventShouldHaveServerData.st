tests
testAssignedEventShouldHaveServerData

	| id event eventUrl |
	
	id := 'eventId'.
	eventUrl := 'eventUrl'.
	event := CalDavEvent newIn: self calendar withId: id withUrl: eventUrl.
	
	self assert: (event serverData notNil) 