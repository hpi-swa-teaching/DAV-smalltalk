instance creation
url: urlString namespaces: namespacesArray properties: propertiesArray

	^ self new
		initializeFromUrl: urlString;
		namespaces: namespacesArray;
		properties: propertiesArray;
		yourself