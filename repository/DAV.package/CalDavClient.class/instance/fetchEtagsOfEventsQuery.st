queries
fetchEtagsOfEventsQuery

	^ CalDAVReportQuery 
		calendarQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('d:getetag')
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR'))))
