fetching
fetchEventDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendRequest: self fetchEventDataQuery to: anUrl.
	
	^ (self parseEventsInformation: response content) first
	