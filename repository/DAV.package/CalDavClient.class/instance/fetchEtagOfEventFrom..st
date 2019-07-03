fetching
fetchEtagOfEventFrom: anUrl

	| response eventInformation |
	
	self assumesAuthorization.
	response := self sendRequest: self fetchEtagOfEventQuery to: anUrl.
	self handleResponse: response.
	eventInformation := self parseEventsInformation: response content.
	
	^ eventInformation first at: #'d:getetag'