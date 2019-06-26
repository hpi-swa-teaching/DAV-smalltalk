tests - queries
testFetchEventsDataQueryForHrefs

	self query: (client  fetchEventsDataQueryFor: #('testUrl')).
	
	self assert: 'REPORT' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	
	self assert: (query properties includes: 'd:getetag').
	self assert: (query properties includes: 'd:getlastmodified').
	self assert: (query properties includes: 'd:getcontenttype').
	
	self assert: (self query content includesSubstring: '<d:href>testUrl</d:href>').
	self assert: (self query content matchesRegex: self regexForFetchEventDataQueryWithHrefs)