fetching
fetchEventsICalDataFrom: anUrl for: hrefArray

	| response query |
	self assumesAuthorization.
	
	query := self fetchEventsICalDataQueryFor: hrefArray.
	response := self sendRequest: query to: anUrl.
	self handleResponse: response.
	
	^ self parseEventsICalData: response content