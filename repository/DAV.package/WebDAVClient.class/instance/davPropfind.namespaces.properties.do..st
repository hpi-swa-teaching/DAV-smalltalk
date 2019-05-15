methods
davPropfind: urlString namespaces: namespacesArray properties: propertiesArray do: aBlock

	| request |
	
	request := DAVPropFindQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock