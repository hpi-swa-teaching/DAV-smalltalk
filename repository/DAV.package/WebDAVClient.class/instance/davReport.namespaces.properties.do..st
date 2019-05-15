methods
davReport: urlString namespaces: namespacesArray properties: propertiesArray do: aBlock

	| request |
	
	request := CalDAVReportQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock