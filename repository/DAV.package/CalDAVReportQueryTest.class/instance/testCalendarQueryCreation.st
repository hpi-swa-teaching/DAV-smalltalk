tests - instanceCreation
testCalendarQueryCreation

	self query: (CalDAVReportQuery calendarQueryFromUrl: 'testUrl' namespaces: #() properties: #() filters: #()).
	self assert: query type equals: 'c:calendar-query'