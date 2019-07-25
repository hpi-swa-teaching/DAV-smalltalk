tests
testNewEventSchouldBeDirty

	| event |
	
	event := CalDavEvent new.
	self assert: event isDirty 