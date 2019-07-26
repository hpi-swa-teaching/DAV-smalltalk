queries
fetchEventsICalDataQuery

	^ CalDAVReportQuery 
		calendarQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('d:getetag' 'c:calendar-data')
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR'))))
	