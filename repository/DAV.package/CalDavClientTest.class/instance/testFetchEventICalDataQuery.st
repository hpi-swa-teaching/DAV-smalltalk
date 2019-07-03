tests - queries
testFetchEventICalDataQuery

	self query: self client fetchEventICalDataQuery.
	self assert: 'GET' equals: self query method