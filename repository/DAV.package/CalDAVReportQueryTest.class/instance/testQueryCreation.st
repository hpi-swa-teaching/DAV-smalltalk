tests - instanceCreation
testQueryCreation

	self query: (CalDAVReportQuery
		url: 'testUrl'
		namespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('D:getetag')
		queryType: 'c:calendar-query'
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR'))))).
		
	self assert: 'testUrl' equals: query fullUrl.
	self assert: 'urn:ietf:params:xml:ns:caldav' equals: 
		(query namespacesDictionary at: 'xmlns:c').
	self assert: 'c:comp-filter' equals: (query filters first type). 
	self assert: (query properties includes: 'd:getetag')