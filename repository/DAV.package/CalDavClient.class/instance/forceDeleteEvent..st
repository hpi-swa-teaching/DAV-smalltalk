deleting
forceDeleteEvent: anEvent

	| response |
	
	self assumesAuthorization.
	response := self sendRequest: DAVDeleteQuery new to: anEvent url.
	
	^ self handleResponse: response