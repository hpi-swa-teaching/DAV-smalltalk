events handling
removeEvent: anEvent

	| key |
	
	key := anEvent url schemeSpecificPart asSymbol.
	self eventsDictionary removeKey: key.
	self client deleteEvent: anEvent.
	
	^ anEvent
	