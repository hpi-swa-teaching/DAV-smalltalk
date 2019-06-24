tests - accessors
testMethodOfEmptyQueries

	self query: DAVPropfindQuery empty.
	self assert: 'PROPFIND' equals: self query method.
	
	self query: DAVReportQuery empty.
	self assert: 'REPORT' equals: self query method.
	
	self query: DAVGetQuery empty.
	self assert: 'GET' equals: self query method.
	
	self query: DAVPutQuery empty.
	self assert: 'PUT' equals: self query method