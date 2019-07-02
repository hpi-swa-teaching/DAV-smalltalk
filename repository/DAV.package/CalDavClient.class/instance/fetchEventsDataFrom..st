fetching
fetchEventsDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendRequest: self fetchEventsDataQuery to: anUrl.
	self handleResponse: response.
	
	^ self parseEventsInformation: response content