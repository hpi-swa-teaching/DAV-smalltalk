fetching
fetchEventICalDataFrom: aHref

	| response |
	self assumesAuthorization.
	
	response := self sendRequest: self fetchEventICalDataQuery to: aHref.

	^ self parseICalData: response content
	