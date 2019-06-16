requests
sendRequest: aQuery to: anUrl

	| client response |
	
	self addAuthorizationInformation: aQuery.
	client := self webDavClient new.
	aQuery initializeFromUrl: anUrl asString.
	response := client sendRequest: aQuery.
	
	^ response.
	
	"^ self handleResponse: response."
	
	