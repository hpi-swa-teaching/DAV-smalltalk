tests - queries
testFetchCalendarQuery

	self query: self client fetchCalendarQuery.
	
	self assert: 'PROPFIND' equals: self query method.
	self assert: (self hasCorrectHeaders: self query).
	self assert: (self query content matchesRegex: self regexForFetchCalendarQuery)