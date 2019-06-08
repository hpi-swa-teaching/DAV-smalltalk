as yet unclassified
testAddFilters

	| filter |
	
	filter := Filter new.
	filter type: 'c:comp-filter'.
	self query addFilter: filter.
	self assert: self query filters first type equals: 'c:comp-filter'