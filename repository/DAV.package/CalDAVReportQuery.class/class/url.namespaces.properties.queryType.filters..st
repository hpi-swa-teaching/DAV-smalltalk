instance creation
url: urlString namespaces: namespacesArray properties: propertiesArray queryType: aString filters: filtersArray

	^ (self url: urlString namespaces: namespacesArray properties: propertiesArray)
		type: aString;
		createFilters: filtersArray