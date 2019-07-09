documentation
exampleDeleteQueryUser: aUsername password: aPassword eventUrl: anUrl 

	| client response | 
	client := WebDAVClient new. 
	client username: aUsername. 
	client password: aPassword. 
	
	response := client davDelete: anUrl do: [:request | ]. 
	^ response content