fetching
fetchCalendarDataFrom: anUrl

	| response |
	
	self assumesAuthorization.
	
	response := self sendRequest: self fetchCalendarQuery to: anUrl.
			
	^ self parseCalendarInformation: response content
	