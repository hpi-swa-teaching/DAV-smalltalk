queries
fetchEventsDataQueryFor: hrefArray

	^ CalDAVReportQuery 
		calendarMultigetQueryWithNamespaces:  #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('d:getetag' 'd:getlastmodified' 'd:getcontentlength' 'd:getcontenttype')
		objectURLs: hrefArray
	