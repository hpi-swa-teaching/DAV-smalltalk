as yet unclassified
testqueryType

	self should: [self query queryType: 'invalidType'] raise: Warning.
	
	CalDAVReportQuery validQueryTypes do: [:aQueryType |
		self query queryType: aQueryType.
		self assert: self query queryType equals: aQueryType
	]