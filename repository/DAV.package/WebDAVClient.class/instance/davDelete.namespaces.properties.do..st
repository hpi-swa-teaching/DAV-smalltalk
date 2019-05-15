methods
davDelete: urlString namespaces: namespacesArray properties: propertiesArray do: aBlock

	| request |
	
	request := DAVDeleteQuery
		url: urlString
		namespaces: namespacesArray
		properties: propertiesArray.

	^ self
		initializeFromUrl: urlString;
		sendRequest: request do: aBlock