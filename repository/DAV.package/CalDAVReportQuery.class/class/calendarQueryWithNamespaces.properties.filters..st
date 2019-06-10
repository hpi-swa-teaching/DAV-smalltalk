instance creation
calendarQueryWithNamespaces: namespacesArray properties: propertiesArray filters: filtersArray

	^ self namespaces: namespacesArray properties: propertiesArray queryType: 'c:calendar-query' filters: filtersArray