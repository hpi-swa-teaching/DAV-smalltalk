usage
examplePropfindQueryCreationUser: aUsername password: aPassword calendarUrl: anUrl

	| client query response |

	client := WebDAVClient new. 
	client username: aUsername. 
	client password: aPassword.
	client initializeFromUrl: anUrl.

	query := DAVPropfindQuery 
		url: anUrl
		namespaces: #((cs 'http://calendarserver.org/ns/'))
		properties: #('cs:getctag').

	response := client sendRequest: query.
	^ response content