requests
fetchEtagOfEventFrom: anUrl

	| response responseContent nodes |
	self assumesAuthorization.
	response := self sendPropfindTo: anUrl 
					theRequest: self fetchEtagOfEventQuery 
					withHeader: { 'Depth' -> '1' }.

	responseContent := response content.
	nodes := self parseXML: responseContent.
	^ (nodes firstTagNamed: #'d:getetag') contents first string