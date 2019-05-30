requests
sendPropfindTo: anUrl theRequest: query

	| client response |
	
	self addAuthorizationInformation: query.
	client := self webDavClient new.
	"client username: 'petr.tsayun'. 
	client password: 'JQ3QNP3Fg3'. "
	client initializeFromUrl: anUrl.
	query initializeFromUrl: anUrl.
	response := client sendRequest: query.
	
	^ response.
	
	"^ self handleResponse: response."
	
	