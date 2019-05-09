as yet unclassified
davPropfind: urlString namespaces: namespacesArray properties: propertiesArray

	| request |
	
	request := DAVPropFindQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request content: request body readStream size: request size.