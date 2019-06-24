tests - queries
testFetchEventsICalDataQueryForHrefs

	self query: (client  fetchEventsICalDataQueryFor: #('testUrl')).
	
	self assert: 'REPORT' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	self assert: (self query body includesSubstring: '<d:href>testUrl</d:href>').
	self assert:
		(self query body matchesRegex: self regexForFetchEventICalDataQueryWithHrefs)