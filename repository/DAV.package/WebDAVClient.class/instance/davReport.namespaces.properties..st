methods
davReport: urlString namespaces: namespacesArray properties: propertiesArray

	| request |
	
	request := CalDAVReportQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request