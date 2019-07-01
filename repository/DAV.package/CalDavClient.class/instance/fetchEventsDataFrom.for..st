fetching
fetchEventsDataFrom: anUrl for: hrefArray

	| response query |
	
	self assumesAuthorization.
	
	query := self fetchEventsDataQueryFor: hrefArray.
	response := self sendRequest: query to: anUrl.
	
	^ self parseEventsInformation: response content