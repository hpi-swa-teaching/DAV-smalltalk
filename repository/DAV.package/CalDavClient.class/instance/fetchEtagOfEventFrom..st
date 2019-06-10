requests
fetchEtagOfEventFrom: anUrl

	| response query |
	
	self assumesAuthorization.
	
	query := self fetchEtagsOfEventsQueryFor: (Array with: anUrl).
	response := self sendRequest: query to: anUrl.
	
	^ (self parseEventsInformation: response content) first

"
	| response responseContent nodes |
	self assumesAuthorization.
	response := self sendPropfindTo: anUrl 
					theRequest: self fetchEtagOfEventQuery 
					withHeader: { 'Depth' -> '1' }.

	responseContent := response content.
	nodes := self parseXML: responseContent.
	^ (nodes firstTagNamed: #'d:getetag') contents first string"