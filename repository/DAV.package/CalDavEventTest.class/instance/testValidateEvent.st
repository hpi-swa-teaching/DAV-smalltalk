tests
testValidateEvent

	| event |
	
	event := CalDavEvent new.
	event setDirty.
	self should: [event validate] raise: Warning.