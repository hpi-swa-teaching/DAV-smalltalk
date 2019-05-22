parsing
parsePropfindResponse: aResponse

	|  xmlDocument response  |
	
	xmlDocument := XMLDOMParser parseDocumentFrom: (aResponse readStream).
	response := PropfindParsedResponse new.

	response calendarName: (self parseProperty: #d:displayname from:  xmlDocument root).
	response ctag: (self parseProperty: #cs:getctag from:  xmlDocument root).
	response syncToken: (self parseProperty: #'d:sync-token' from:  xmlDocument root).
	response status: (self parseProperty: #d:status from:  xmlDocument root).

	^ response