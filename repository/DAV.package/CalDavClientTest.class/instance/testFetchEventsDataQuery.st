tests - queries
testFetchEventsDataQuery

	| query |
	
	query := client fetchEventsDataQuery.
	query createXmlBody.
	
	self assert: 'REPORT' equals: query method.
	
	self assert: 'return-minimal' equals: (query headerAt: 'Prefer').
	self assert: '1' equals: (query headerAt: 'Depth').
	self assert: 'application/xml' equals: (query headerAt: 'Content-Type').
	
	self assert: (query properties includes: 'd:getetag').
	self assert: (query properties includes: 'd:getlastmodified').
	self assert: (query properties includes: 'd:getcontenttype').
	
	self assert: CalDavClientTest mockFetchEventsDataQueryBody equals: query body.
	
	