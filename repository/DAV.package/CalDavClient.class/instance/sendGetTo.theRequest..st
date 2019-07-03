requests
sendGetTo: anUrl theRequest: query

	| client response |
	
	self addAuthorizationInformation: query.
	client := self webDAVClient new.
	client initializeFromUrl: anUrl.
	query initializeFromUrl: anUrl.
	response := client sendRequest: query.
	
	^ response.
	
	"^ self handleResponse: response."
	
	