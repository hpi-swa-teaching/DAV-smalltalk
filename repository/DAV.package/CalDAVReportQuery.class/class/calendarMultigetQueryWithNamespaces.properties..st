instance creation
calendarMultigetQueryWithNamespaces: namespacesArray properties: propertiesArray

	^ self namespaces: namespacesArray properties: propertiesArray queryType: 'c:calendar-multiget'