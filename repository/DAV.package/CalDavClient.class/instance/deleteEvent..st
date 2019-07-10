deleting
deleteEvent: anEvent

	| response query |
	
	self assumesAuthorization.
	query := DAVDeleteQuery new.
	query headerAt: 'If-Match' put: anEvent etag.
	response := self sendRequest: query to: anEvent url.
	
	^ self handleResponse: response