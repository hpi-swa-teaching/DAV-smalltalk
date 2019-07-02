fetching
fetchEtagsOfEventsFrom: anUrl

	| response |
	
	self assumesAuthorization.
	
	response := self sendRequest: self fetchEtagsOfEventsQuery to: anUrl.
	self handleResponse: response.
	
	^ self parseEventsInformation: response content