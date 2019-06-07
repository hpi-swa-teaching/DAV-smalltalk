requests
sendPropfindTo: anUrl theRequest: query

	| client response |
	
	self addAuthorizationInformation: query.
	client := self webDavClient new.
	client initializeFromUrl: anUrl asString.
	query initializeFromUrl: anUrl asString.
	response := client sendRequest: query.
	
	^ response.
	
	"^ self handleResponse: response."
	
	