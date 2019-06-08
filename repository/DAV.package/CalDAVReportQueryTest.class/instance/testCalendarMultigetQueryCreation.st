as yet unclassified
testCalendarMultigetQueryCreation

	self query: (CalDAVReportQuery calendarMultigetQueryFromUrl: 'testUrl' namespaces: #() properties: #() filters: #()).
	self assert: query type equals: 'c:calendar-multiget'