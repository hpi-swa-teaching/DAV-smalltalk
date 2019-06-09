tests - queries
testFetchEtagsOfEventsQuery

	| query |
	
	query := client fetchEtagsOfEventsQuery.
	query createXmlBody.
	
	self assert: 'REPORT' equals: query method.
	
	self assert: 'return-minimal' equals: (query headerAt: 'Prefer').
	self assert: '1' equals: (query headerAt: 'Depth').
	self assert: 'application/xml' equals: (query headerAt: 'Content-Type').
	
	self assert: (query properties includes: 'd:getetag').
	
	self assert: CalDavClientTest mockFetchEtagsOfEventsQueryBody equals: query body.
	
	