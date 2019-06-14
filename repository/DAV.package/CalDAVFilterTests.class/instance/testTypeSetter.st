tests - accessors
testTypeSetter

	self should: [self filter type: 'invalidType'] raise: Warning.
	
	self filter validFilterTypes do: [:filterType |
		self filter type: filterType.
		self assert: self filter type equals: filterType
	]