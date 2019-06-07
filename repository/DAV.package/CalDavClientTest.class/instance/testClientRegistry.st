tests
testClientRegistry

	| client url |

	client := SabreCalDavClient new.
	url := 'https://owncloud.hpi.de/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/'.
	CalDavClient registerClient: client for: url asUrl.
	
	self assert: (CalDavClient registeredClientFor: url asUrl) equals: client.
	