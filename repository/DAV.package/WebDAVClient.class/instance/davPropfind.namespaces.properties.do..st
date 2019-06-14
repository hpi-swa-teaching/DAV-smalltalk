methods
davPropfind: urlString namespaces: namespacesArray properties: propertiesArray do: aBlock

	| request |
	
	request := DAVPropfindQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock