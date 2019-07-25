usage
example04PropfindQueryEmptyUser: aUsername password: aPassword calendarUrl: aCalendarUrl
"EmptyPropfindQuery returns eTags of all Calendar Events"

	| client url response |
	
	client := WebDAVClient new.
	client username: aUsername.
	client password: aPassword.
	url := aCalendarUrl. 
	response := client davPropfind: url namespaces: #() properties: #(). 
	
	^ response content