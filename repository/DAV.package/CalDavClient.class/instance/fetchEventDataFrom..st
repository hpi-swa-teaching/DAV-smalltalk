requests
fetchEventDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendGetTo: anUrl theRequest: self fetchEventDataQuery.
	" withHeader: {
		'Depth' -> '1' }."

	^ self parseCompleteEventInformation: response content
	