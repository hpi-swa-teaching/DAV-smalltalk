fetching
fetchCalendarDataFrom: anUrl

	| response |
	
	self assumesAuthorization.
	
	response := self sendRequest: self fetchCalendarQuery to: anUrl.
	self handleResponse: response.
			
	^ self parseCalendarInformation: response content
	