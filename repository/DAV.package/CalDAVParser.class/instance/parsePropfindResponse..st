parsing
parsePropfindResponse: aResponse

	|  xmlDocument response  |
	
	xmlDocument := XMLDOMParser parseDocumentFrom: (aResponse readStream).
	response := PropfindParsedResponse new.
	

	response calendarName: (xmlDocument root firstTagNamed: #d:displayname) characterData.
	response ctag: (xmlDocument root firstTagNamed: #cs:getctag) characterData.
	response syncToken: (xmlDocument root firstTagNamed: #'d:sync-token') characterData.
	response status: (xmlDocument root firstTagNamed: #'d:status') characterData.
	
	^ response