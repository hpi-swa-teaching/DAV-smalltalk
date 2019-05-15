methods
davReport: urlString namespaces: namespacesArray properties: propertiesArray queryType: aString do: aBlock

	| request |
	
	request := CalDAVReportQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray
		queryType: aString.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock