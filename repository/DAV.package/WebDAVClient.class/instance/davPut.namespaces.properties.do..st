methods
davPut: urlString namespaces: namespacesArray properties: propertiesArray do: aBlock

	| request |
	
	request := DAVPutQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock