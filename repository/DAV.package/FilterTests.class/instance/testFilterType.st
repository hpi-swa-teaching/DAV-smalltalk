as yet unclassified
testFilterType

	self should: [self filter type: 'invalidType'] raise: Warning.
	
	Filter validFilterTypes do: [:filterType |
		self filter type: filterType.
		self assert: self filter type equals: filterType
	]