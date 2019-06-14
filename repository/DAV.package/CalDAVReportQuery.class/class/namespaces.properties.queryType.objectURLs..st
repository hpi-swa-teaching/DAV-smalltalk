instance creation
namespaces: namespacesArray properties: propertiesArray queryType: aString objectURLs: urlArray

	^ (self namespaces: namespacesArray properties: propertiesArray)
		type: aString;
		objectURLs: urlArray