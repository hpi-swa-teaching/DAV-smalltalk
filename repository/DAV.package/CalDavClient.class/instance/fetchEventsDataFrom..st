fetching
fetchEventsDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendRequest: self fetchEventsDataQuery to: anUrl.
	"response := self sendPropfindTo: anUrl theRequest: self fetchEventsDataQuery .withHeader: {
		'Prefer' -> 'return-minimal'.
		'Depth' -> '1' }."
	
	^ self parseEventsInformation: response content