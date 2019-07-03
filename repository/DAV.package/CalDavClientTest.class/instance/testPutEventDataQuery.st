tests - queries
testPutEventDataQuery

	self query: client putEventDataQuery.
	
	self assert: 'PUT' equals: self query method.
	self assert: 'text/calendar; charset=utf-8' equals: (self query headerAt: 'Content-Type')