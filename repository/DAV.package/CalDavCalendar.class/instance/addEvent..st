events handling
addEvent: anEvent

	self eventsDictionary at: anEvent url schemeSpecificPart asSymbol put: anEvent.
	anEvent
		setClean;
		calendar: self