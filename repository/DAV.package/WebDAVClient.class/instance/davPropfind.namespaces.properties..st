methods
davPropfind: urlString namespaces: namespacesArray properties: propertiesArray

	| request |
	
	request := DAVPropfindQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request