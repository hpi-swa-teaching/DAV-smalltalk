as yet unclassified
testWarningOnInvalidQueryType

	self should: [self query type: 'invalidType'] raise: Warning.
	
	self query validQueryTypes do: [:aQueryType |
		self query type: aQueryType.
		self assert: self query type equals: aQueryType
	]