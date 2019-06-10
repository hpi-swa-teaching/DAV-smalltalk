instance creation
calendarMultigetQueryWithNamespaces: namespacesArray properties: propertiesArray objectURLs: urlArray

	^ self namespaces: namespacesArray properties: propertiesArray queryType: 'c:calendar-multiget' objectURLs: urlArray