events handling
removeEvent: anEvent

	self client deleteEvent: anEvent.
	self removeEventLocal: anEvent.
	
	^ anEvent
	