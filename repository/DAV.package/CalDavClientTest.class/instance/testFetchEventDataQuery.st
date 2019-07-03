tests - queries
testFetchEventDataQuery
	
	self query: client fetchEventDataQuery.
	
	self assert: 'PROPFIND' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	self assert: (self query content matchesRegex: self regexForFetchEventDataQuery)
	
	