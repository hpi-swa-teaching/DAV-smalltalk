queries
fetchEtagsOfEventsQueryFor: hrefArray


	^ CalDAVReportQuery 
	calendarMultigetQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav')) 
	properties: #('d:getetag')
	objectURLs: hrefArray
	
	
	"^ self fetchEtagOfEventQuery 
		objectURLs: hrefArray"
