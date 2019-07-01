fetching
fetchEtagsOfEventsFrom: anCalendarUrl for: eventUrlArray

	| response query |
	
	self assumesAuthorization.
	
	query := self fetchEtagsOfEventsQueryFor: eventUrlArray.
	
	response := self sendRequest: query to: anCalendarUrl.
	
	^ self parseEventsInformation: response content