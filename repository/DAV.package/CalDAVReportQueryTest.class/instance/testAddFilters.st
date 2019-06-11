tests - accessors
testAddFilters

	| filter1 filter2 |
	
	filter1 := CalDAVFilter type: 'c:comp-filter' attributes: #().
	filter2 := CalDAVFilter type: 'c:comp-filter' attributes: #().
	self query addFilters: {filter1. filter2}.
	self assert: 2 equals: self query filters size.
	self assert: {'c:comp-filter'. 'c:comp-filter'} asOrderedCollection equals:
		(self query filters collect: [ :filter | filter type ])