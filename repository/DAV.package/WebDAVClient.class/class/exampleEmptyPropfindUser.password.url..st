documentation
exampleEmptyPropfindUser: aUsername password: aPassword url: anUrl
"EmptyPropfindQuery returns eTags of all Calendar Events"

	| client url res |
	client := WebDAVClient new.
	client username: aUsername.
	client password: aPassword.
	url := anUrl. 
	res := client davPropfind: url namespaces: #() properties: #(). 
	^ res content