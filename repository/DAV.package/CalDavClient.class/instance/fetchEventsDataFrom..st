fetching
fetchEventsDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendRequest: self fetchEventsDataQuery to: anUrl.
	
	^ self parseEventsInformation: response content