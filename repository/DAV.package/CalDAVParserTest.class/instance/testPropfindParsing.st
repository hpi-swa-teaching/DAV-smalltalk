tests - PropfindResponse
testPropfindParsing

	| parser response |
	
	parser := CalDAVParser new.
	response := parser parsePropfindResponse: (CalDavTest propfindResponse).
	
	self assert: response calendarName = 'SWT (hendrik.patzlaff)'.
	self assert: response ctag = 'http://sabre.io/ns/sync/23'.
	self assert: response syncToken = 'http://sabre.io/ns/sync/23'.
	self assert: response status = 'HTTP/1.1 200 OK'.
	