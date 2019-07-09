usage
exampleSetUpClient 

	| client url |
	
	client := SabreCalDavClient new.
		"can be any subclass of CalDavClient"
	client username: 'Max'. 
	client password: '12345678'. 
	url := 'https://urlOfTheCalendar'. 
	CalDavClient registerClient: client for: url.