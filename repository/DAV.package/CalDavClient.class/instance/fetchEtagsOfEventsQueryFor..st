queries
fetchEtagsOfEventsQueryFor: aHrefArray

	^ CalDAVReportQuery 
		calendarMultigetQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav')) 
		properties: #('d:getetag')
		objectURLs: aHrefArray