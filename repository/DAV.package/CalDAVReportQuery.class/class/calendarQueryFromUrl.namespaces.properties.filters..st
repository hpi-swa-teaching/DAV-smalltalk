instance creation
calendarQueryFromUrl: urlString namespaces: namespacesArray properties: propertiesArray filters: filtersArray

	^ self url: urlString namespaces: namespacesArray properties: propertiesArray queryType: 'c:calendar-query' filters: filtersArray