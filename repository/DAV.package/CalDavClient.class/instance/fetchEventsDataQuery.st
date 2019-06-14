queries
fetchEventsDataQuery

	^ CalDAVReportQuery 
		calendarQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('d:getetag' 'd:getlastmodified' 'd:getcontentlength' 'd:getcontenttype')
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR'))))
	
	"^ DAVEmptyPropfindQuery new"