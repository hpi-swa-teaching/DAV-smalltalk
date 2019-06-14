requests
fetchEventsDataFrom: anUrl for: hrefArray

	| response query |
	self assumesAuthorization.
	
	query := self fetchEventsDataQueryFor: hrefArray.
	response := self sendRequest: query to: anUrl.
	"response := self sendPropfindTo: anUrl theRequest: self fetchEventsDataQuery .withHeader: {
		'Prefer' -> 'return-minimal'.
		'Depth' -> '1' }."
	
	^ self parseEventsInformation: response content