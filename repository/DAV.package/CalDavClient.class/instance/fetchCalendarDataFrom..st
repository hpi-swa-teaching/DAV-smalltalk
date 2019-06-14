requests
fetchCalendarDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	
	response := self sendRequest: self fetchCalendarQuery to: anUrl.
	
	"response := self sendPropfindTo: anUrl theRequest: self fetchCalendarQuery."
		
	^ self parseCalendarInformation: response content
	