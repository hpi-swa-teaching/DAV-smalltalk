queries
fetchEventsICalDataQueryFor: aHrefArray


	^ CalDAVReportQuery 
		calendarMultigetQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav')) 
		properties: #('d:getetag' 'c:calendar-data')
		objectURLs: aHrefArray
	