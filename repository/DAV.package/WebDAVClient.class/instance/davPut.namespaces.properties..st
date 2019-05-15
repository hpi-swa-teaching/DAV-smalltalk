methods
davPut: urlString namespaces: namespacesArray properties: propertiesArray

	| request |
	
	request := DAVPutQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request