tests - CheckResponse
testCheckParsing

	| parser responses |
	
	parser := CalDAVParser new.
	responses := parser parseCheckResponse: (CalDavTest reportEtagsResponse).
	
	self assert: ((responses at: 1) at: #href) = '/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/111111111111.ics'.
	self assert: ((responses at: 4) at: #etag) = '"f8fa77fc6f82eff28909cebfd54ba951"'.
	self assert: ((responses at: 5) at: #status) = 'HTTP/1.1 200 OK'
	
	