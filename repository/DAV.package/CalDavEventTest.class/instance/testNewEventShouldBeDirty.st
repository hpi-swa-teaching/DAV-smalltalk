tests
testNewEventShouldBeDirty

	| event |
	
	event := CalDavEvent new.
	self assert: event isDirty 