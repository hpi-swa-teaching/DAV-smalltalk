requests
fetchEtagOfEventFrom: anUrl

	"| response query |
	
	self assumesAuthorization.
	
	query := self fetchEtagsOfEventsQueryFor: (Array with: anUrl).
	response := self sendRequest: query to: anUrl.
	
	^ (self parseEventsInformation: response content) first"


	| response parsedInformation |
	self assumesAuthorization.
	response := self sendRequest: self fetchEtagOfEventQuery to: anUrl.

	"response := self sendPropfindTo: anUrl 
					theRequest: self fetchEtagOfEventQuery 
					withHeader: { 'Depth' -> '1' }."

	parsedInformation := self parseEventsInformation: response content.
	
	^ parsedInformation first at: #'d:getetag'
	
	"responseContent := response content.
	nodes := self parseXML: responseContent.
	^ (nodes firstTagNamed: #'d:getetag') contents first string"