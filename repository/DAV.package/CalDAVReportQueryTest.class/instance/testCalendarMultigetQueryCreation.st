tests - instanceCreation
testCalendarMultigetQueryCreation

	self query: (CalDAVReportQuery calendarMultigetQueryFromUrl: 'testUrl' 
		namespaces: #() 
		properties: #() 
		filters: #()).
		
	self assert: 'c:calendar-multiget' equals: query type