tests - CheckResponse
testCheckParsing

	| parser responses |
	
	parser := CalDAVParser new.
	responses := parser parseCheckResponse: (self checkResponse).
	
	self assert: ((responses at: 1) href) = '/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/111111111111.ics'.
	self assert: ((responses at: 4) etag) = '"db57d9aaad4f8e7afab35382a60aef26"'.
	self assert: ((responses at: 5) status) = 'HTTP/1.1 200 OK'
	
	