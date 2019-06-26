setup
setUpClientForRealServer

	| url |
	
	url := 'https://www.caldavserver.com', 				'/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/'.

	self client: (SabreCalDavClient url: url username: 'U59269' password: 'LSk8OD').
	
	^ url