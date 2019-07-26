tests - instanceCreation
testCalendarQueryCreation

	self query: (CalDAVReportQuery calendarQueryFromUrl: 'testUrl' 
		namespaces: #() 
		properties: #() 
		filters: #()).
		
	self assert: 'c:calendar-query' equals: query type