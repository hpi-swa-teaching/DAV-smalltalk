tests - queries
testFetchEtagOfEventQuery

	self query: client fetchEtagOfEventQuery.
	
	self assert: 'PROPFIND' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	self assert: (self query properties includes: 'd:getetag').
	self assert: (self query content matchesRegex: self regexForFetchEtagOfEventQuery)