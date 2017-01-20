requests
fetchCalendarDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendTo: anUrl theRequest: self fetchCalendarQuery withHeader: {
		'Prefer' -> 'return-minimal'.
		'Depth' -> '0' }.
		
	^ self parseCalendarInformation: response content
	