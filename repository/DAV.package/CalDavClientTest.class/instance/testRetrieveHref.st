tests - parsing
testRetrieveHref
	
	self assert: 'eventUrl' equals: (self client retrieveHref: self xmlEventSuccessNode)