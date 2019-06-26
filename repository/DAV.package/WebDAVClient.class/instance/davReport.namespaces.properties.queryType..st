methods
davReport: urlString namespaces: namespacesArray properties: propertiesArray queryType: aString

	| request |
		
	self initializeFromUrl: urlString.
	
	request := CalDAVReportQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray
		queryType: aString.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request