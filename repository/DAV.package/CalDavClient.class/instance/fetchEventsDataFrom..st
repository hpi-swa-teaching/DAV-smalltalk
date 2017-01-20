requests
fetchEventsDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendTo: anUrl theRequest: self fetchEventQuery withHeader: {
		'Prefer' -> 'return-minimal'.
		'Depth' -> '1' }.
	
	^ self parseEventsInformation: response content
	