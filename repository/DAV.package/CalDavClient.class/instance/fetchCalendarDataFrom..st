requests
fetchCalendarDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendPropfindTo: anUrl theRequest: self fetchCalendarQuery.
		
	^ self parseCalendarInformation: response content
	