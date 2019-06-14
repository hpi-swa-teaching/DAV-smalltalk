tests - PropfindResponse
testPropfindParsing

	| parser response |
	
	parser := CalDAVParser new.
	response := parser parsePropfindResponse: (CalDavTest propfindResponse).
	
	self assert: 'SWT (hendrik.patzlaff)' equals: (response at: #calendarName).
	self assert: 'http://sabre.io/ns/sync/23' equals: (response at: #ctag).
	self assert: 'http://sabre.io/ns/sync/23' equals: (response at: #'sync-token').
	self assert: 'HTTP/1.1 200 OK' equals: (response at: #status).
	