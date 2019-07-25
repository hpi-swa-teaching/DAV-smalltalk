fetching
fetchEventsICalDataFrom: anUrl

	| response query |
	
	self assumesAuthorization.
	
	query := self fetchEventsICalDataQuery.
	response := self sendRequest: query to: anUrl.
	
	^ self parseEventsICalData: response content