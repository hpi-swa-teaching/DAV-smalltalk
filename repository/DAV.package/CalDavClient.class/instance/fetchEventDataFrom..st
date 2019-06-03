requests
fetchEventDataFrom: anUrl

	| response query |
	self assumesAuthorization.
	
	query := self fetchEventDataQuery.
	response := self sendGetTo: anUrl theRequest: query.
	" withHeader: {
		'Depth' -> '1' }."

	^ self parseCompleteEventInformation: response content
	