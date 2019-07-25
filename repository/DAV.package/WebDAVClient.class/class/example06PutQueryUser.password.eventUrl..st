usage
example06PutQueryUser: aUsername password: aPassword eventUrl: anUrl 

	| client response | 
	
	client := WebDAVClient new. 
	client username: aUsername. 
	client password: aPassword. 
	
	response := client davPut: anUrl data: '' do: [:request | ]. 
	
	^ response content