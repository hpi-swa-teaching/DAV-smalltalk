tests - methods
testCalDAVReportWithRealServer

	 | url resp |

	url := self setUpRealTestServer.	

	self client initializeFromUrl: url.
 
	self query: (CalDAVReportQuery
		url: url
		namespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('d:getetag' 'c:calendar-data')
		queryType: 'c:calendar-query'
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR'))))).

	resp := self client sendRequest: query.
	self assert: 207 equals: resp code