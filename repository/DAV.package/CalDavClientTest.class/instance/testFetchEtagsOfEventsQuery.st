tests - queries
testFetchEtagsOfEventsQuery
	
	self query: client fetchEtagsOfEventsQuery.
	
	self assert: 'REPORT' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	self assert: (self query properties includes: 'd:getetag').
	self assert: (self query content matchesRegex: self regexForFetchEtagsOfEventsQuery)