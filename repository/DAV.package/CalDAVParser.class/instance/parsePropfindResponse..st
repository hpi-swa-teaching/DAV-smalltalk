parsing
parsePropfindResponse: aResponse

	|  xmlDocument  |
	
	xmlDocument := XMLDOMParser parseDocumentFrom: (aResponse readStream).
	self status: (xmlDocument root firstTagNamed: #d:status) characterData.
	self calendarName: (xmlDocument root firstTagNamed: #d:displayname) characterData.
	self syncToken: (xmlDocument root firstTagNamed: #'d:sync-token') characterData
	