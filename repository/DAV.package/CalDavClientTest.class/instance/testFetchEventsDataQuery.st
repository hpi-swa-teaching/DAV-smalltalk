tests - queries
testFetchEventsDataQuery

	self query: client fetchEventsDataQuery.
	
	self assert: 'REPORT' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	
	self assert: (query properties includes: 'd:getetag').
	self assert: (query properties includes: 'd:getlastmodified').
	self assert: (query properties includes: 'd:getcontenttype').
	
	self assert: (self query content matchesRegex: self regexForFetchEventsDataQuery)