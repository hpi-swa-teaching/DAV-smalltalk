tests - accessors
testMethodOfEmptyQueries

	self query: DAVPropfindQuery empty.
	self assert: 'PROPFIND' equals: query method.
	
	self query: DAVReportQuery empty.
	self assert: 'REPORT' equals: query method.
	
	self query: DAVGetQuery empty.
	self assert: 'GET' equals: query method