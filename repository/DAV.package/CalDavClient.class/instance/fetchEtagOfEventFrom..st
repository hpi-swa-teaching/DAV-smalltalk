fetching
fetchEtagOfEventFrom: anUrl

	| response parsedInformation |
	self assumesAuthorization.
	response := self sendRequest: self fetchEtagOfEventQuery to: anUrl.

	parsedInformation := self parseEventsInformation: response content.
	
	^ parsedInformation first at: #'d:getetag'
