fetching
fetchEtagOfEventFrom: anUrl

	| response eventInformation |
	
	self assumesAuthorization.
	response := self sendRequest: self fetchEtagOfEventQuery to: anUrl.
	eventInformation := self parseEventsInformation: response content.
	
	^ eventInformation first at: #'d:getetag'