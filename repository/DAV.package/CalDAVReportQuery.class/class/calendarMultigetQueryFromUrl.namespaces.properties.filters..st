instance creation
calendarMultigetQueryFromUrl: urlString namespaces: namespacesArray properties: propertiesArray filters: filtersArray

	^ self url: urlString namespaces: namespacesArray properties: propertiesArray queryType: 'c:calendar-multiget' filters: filtersArray