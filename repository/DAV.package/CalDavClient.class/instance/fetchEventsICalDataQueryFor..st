queries
fetchEventsICalDataQueryFor: hrefArray


	^ CalDAVReportQuery 
	calendarMultigetQueryWithNamespaces: #((c 'urn:ietf:params:xml:ns:caldav')) 
	properties: #('d:getetag' 'c:calendar-data')
	objectURLs: hrefArray
	
	
	"^ self fetchEtagOfEventQuery 
		objectURLs: hrefArray"
