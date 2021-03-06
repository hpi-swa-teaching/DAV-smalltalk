methods
davReport: urlString namespaces: namespacesArray properties: propertiesArray queryType: aString filters: filtersArray do: aBlock

	| request |
		
	self initializeFromUrl: urlString.
	
	request := CalDAVReportQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray
		queryType: aString
		filters: filtersArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock