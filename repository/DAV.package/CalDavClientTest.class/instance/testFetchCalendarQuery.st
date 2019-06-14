tests - queries
testFetchCalendarQuery

	| query |
	
	query := client fetchCalendarQuery.
	query createXmlBody.
	
	self assert: 'PROPFIND' equals: query method.
	
	self assert: 'return-minimal' equals: (query headerAt: 'Prefer').
	self assert: '1' equals: (query headerAt: 'Depth').
	self assert: 'application/xml' equals: (query headerAt: 'Content-Type').
	
	self assert: CalDavClientTest mockFetchCalendarQueryBody equals: query body.
	
	