methods
davPropfind: urlString namespaces: namespacesArray properties: propertiesArray do: aBlock

	| request |
	
	self initializeFromUrl: urlString.
		
	request := DAVPropfindQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock