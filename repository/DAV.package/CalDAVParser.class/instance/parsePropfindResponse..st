parsing
parsePropfindResponse: aResponse

	|  xmlDocument response  |
	
	xmlDocument := XMLDOMParser parseDocumentFrom: (aResponse readStream).
	response := Dictionary new.

	response at: #calendarName put: (self parseProperty: #d:displayname from:  xmlDocument root).
	response at: #ctag put: (self parseProperty: #cs:getctag from:  xmlDocument root).
	response at: #'sync-token' put: (self parseProperty: #'d:sync-token' from:  xmlDocument root).
	response at: #status put: (self parseProperty: #d:status from:  xmlDocument root).

	^ response