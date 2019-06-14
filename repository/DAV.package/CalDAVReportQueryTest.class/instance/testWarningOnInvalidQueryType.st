tests - accessors
testWarningOnInvalidQueryType

	self should: [self query type: 'invalidType'] raise: Warning.
	
	self query validQueryTypes do: [:aQueryType |
		self query type: aQueryType.
		self assert: aQueryType equals: self query type
	]