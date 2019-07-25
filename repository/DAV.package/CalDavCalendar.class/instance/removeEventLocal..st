events handling
removeEventLocal: anEvent

	| key |
	
	key := anEvent url schemeSpecificPart asSymbol.
	self eventsDictionary removeKey: key ifAbsent: [].
	anEvent setDirty.
	
	^ anEvent
	