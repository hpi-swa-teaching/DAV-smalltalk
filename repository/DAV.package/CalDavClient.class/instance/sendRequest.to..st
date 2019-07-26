requests
sendRequest: aQuery to: anUrl

	| response |
	
	self addAuthorizationInformation: aQuery.
	self webDAVClient initializeFromUrl: anUrl asString.
	aQuery initializeFromUrl: anUrl asString.
	
	response := self webDAVClient sendRequest: aQuery.
	^ self handleResponse: response