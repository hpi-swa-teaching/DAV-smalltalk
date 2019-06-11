tests - instanceCreation
testQueryCreation

	self query: (CalDAVReportQuery
		url: 'testUrl'
		namespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('D:getetag')
		queryType: 'c:calendar-query'
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR'))))).
	self assert: query fullUrl equals: 'testUrl'.
	self assert: (query namespacesDictionary at: 'xmlns:c') equals: 'urn:ietf:params:xml:ns:caldav'.
	self assert: (query properties includes: 'd:getetag').
	self assert: (query filters first type) equals: 'c:comp-filter'