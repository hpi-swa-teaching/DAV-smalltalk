events handling
removeEvent: anEvent

	| key |
	
	self client deleteEvent: anEvent.
	key := anEvent url schemeSpecificPart asSymbol.
	self eventsDictionary removeKey: key ifAbsent: [].
	anEvent setDirty.
	
	^ anEvent
	