requests
sendPropfindTo: anUrl theRequest: query 

	| client |
	
	client := self webDavClient new.
	self addAuthorizationInformation: query.
	client initializeFromUrl: anUrl.
	query initializeFromUrl: anUrl.
	^  client sendRequest: query.
	



	
