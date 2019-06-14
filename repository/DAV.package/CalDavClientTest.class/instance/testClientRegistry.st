tests
testClientRegistry

	| client url |

	client := SabreCalDavClient new.
	url := 'https://www.example.com/DAV/calendars/968cdb'.
	CalDavClient registerClient: client for: url asUrl.
	
	self assert: (CalDavClient registeredClientFor: url asUrl) equals: client.
	