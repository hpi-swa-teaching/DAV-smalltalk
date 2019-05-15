methods
davDelete: urlString namespaces: namespacesArray properties: propertiesArray

	| request |
	
	request := DAVDeleteQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request