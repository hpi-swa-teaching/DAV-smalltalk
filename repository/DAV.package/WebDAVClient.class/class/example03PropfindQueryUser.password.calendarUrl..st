examples
example03PropfindQueryUser: aUsername password: aPassword calendarUrl: anUrl 

	| client response |

	client := WebDAVClient new. 
	client username: aUsername. 
	client password: aPassword.
	client initializeFromUrl: anUrl.

	response := client davPropfind: anUrl
			namespaces: #((cs 'http://calendarserver.org/ns/'))
			properties: #('D:displayname' 'cs:getctag' 'D:sync-token'). 
			
	^ response content