requests
sendRequest: aQuery to: anUrl

	| response |
	
	self addAuthorizationInformation: aQuery.
	self webDAVClient: (WebDAVClient url: anUrl asString).
	aQuery initializeFromUrl: anUrl asString.
	
	^ response := self webDAVClient sendRequest: aQuery