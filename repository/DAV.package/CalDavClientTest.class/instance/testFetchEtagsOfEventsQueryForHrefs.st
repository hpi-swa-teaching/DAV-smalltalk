tests - queries
testFetchEtagsOfEventsQueryForHrefs
	
	self query: (client fetchEtagsOfEventsQueryFor: #('testUrl')).
	
	self assert: 'REPORT' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	self assert: (self query content includesSubstring: '<d:href>testUrl</d:href>').
	self assert:
		(self query content matchesRegex: self regexForFetchEventsDataFromFor)