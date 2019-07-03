tests - queries
testPutEventDataQueryWithPayload

	self query: (client putEventDataQueryWithPayload: 'testPayload').
	
	self assert: 'PUT' equals: self query method.
	self assert: 'testPayload' equals: self query content