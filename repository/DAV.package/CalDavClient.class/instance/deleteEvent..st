deleting
deleteEvent: anEvent

	| response |
	
	self assumesAuthorization.
	
	response := self sendRequest: DAVDeleteQuery new to: anEvent url.
	
	^ anEvent