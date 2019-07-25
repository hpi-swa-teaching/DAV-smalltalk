tests - accessors
testAddFilter

	| filter |
	
	filter := CalDAVFilter new
		type: 'c:comp-filter'.
	self query addFilter: filter.
	
	self assert: 'c:comp-filter' equals: self query filters first type