tests - queries
testFetchEventDataQuery

	| query |
	
	query := client fetchEventDataQuery.
	query createXmlBody.
	
	self assert: 'GET' equals: query method.
	
	self assert: '' equals: query body.
	
	