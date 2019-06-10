queries
fetchEtagOfEventQuery

	^ CalDAVReportQuery 
	calendarMultigetQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav')) 
	properties: #('d:getetag')

	"
	^ DAVPropfindQuery
		namespaces: #()
		properties: #('D:getetag')"