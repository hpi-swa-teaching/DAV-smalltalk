documentation
exampleEmptyPropfindUser: aUsername password: aPassword calendarUrl: aCalendarUrl
"EmptyPropfindQuery returns eTags of all Calendar Events"

	| client url res |
	client := WebDAVClient new.
	client username: aUsername.
	client password: aPassword.
	url := aCalendarUrl. 
	res := client davPropfind: url namespaces: #() properties: #(). 
	^ res content