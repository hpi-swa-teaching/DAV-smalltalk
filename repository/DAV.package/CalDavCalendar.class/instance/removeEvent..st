events handling
removeEvent: anEvent

	| key |
	
	key := anEvent url schemeSpecificPart asSymbol.
	self eventsDictionary removeKey: key ifAbsent: [].
	self client deleteEvent: anEvent.
	
	^ anEvent
	