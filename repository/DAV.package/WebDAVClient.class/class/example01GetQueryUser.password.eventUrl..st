usage
example01GetQueryUser: aUsername password: aPassword eventUrl: anUrl

	| client response |

	client := WebDAVClient new. 
	client username: aUsername. 
	client password: aPassword.  

	response := client davGet: anUrl data: '' do: [:req | req headerAt: 'Depth' put: 1 ].
	^ response content