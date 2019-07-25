requests
deleteEvent: anIcalEvent at: anUrl at: etag

	| response |
	self assumesAuthorization.
	
	"ToDo: Refactoring"
	response := self sendDeleteTo: anUrl withHeader: {
			'Content-Type' -> 'text/calendar'.
			'If-Match' -> etag asString.
		}.

	self handleResponse: response