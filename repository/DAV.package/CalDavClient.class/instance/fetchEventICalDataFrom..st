fetching
fetchEventICalDataFrom: aHref

	| response |
	self assumesAuthorization.
	
	response := self sendRequest: self fetchEventICalDataQuery to: aHref.
	
	"response := self sendGetTo: anUrl theRequest: self fetchEventDataQuery.
	 withHeader: {
		'Depth' -> '1' }."

	^ self parseICalData: response content
	