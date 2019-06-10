initialization
setUp

	| url |
	
	super setUp.
	
	url := 'https://www.caldavserver.com/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/'.
	client := SabreCalDavClient new.
	client username: 'U59269'. 
	client password: 'LSk8OD'. 
	CalDavClient registerClient: client for: url.