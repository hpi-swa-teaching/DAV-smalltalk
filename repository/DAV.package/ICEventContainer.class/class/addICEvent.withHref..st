storing
addICEvent: anICEvent withHref: aHref

	Events
		ifNil: (Events := Dictionary new).
		
	Events at: aHref put: anICEvent.
	^ anICEvent
