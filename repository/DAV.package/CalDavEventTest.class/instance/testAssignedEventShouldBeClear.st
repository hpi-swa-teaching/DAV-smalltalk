tests
testAssignedEventShouldBeClear

	| event |
	
	event := self calendar newEvent.
	
	self assert: (event isDirty not) 