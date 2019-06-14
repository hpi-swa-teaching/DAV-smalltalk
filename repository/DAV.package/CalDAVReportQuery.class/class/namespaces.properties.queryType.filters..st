instance creation
namespaces: namespacesArray properties: propertiesArray queryType: aString filters: filtersArray

	^ (self namespaces: namespacesArray properties: propertiesArray)
		type: aString;
		createFilters: filtersArray