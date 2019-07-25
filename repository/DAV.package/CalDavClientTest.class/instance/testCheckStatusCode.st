tests - parsing
testCheckStatusCode

	self shouldnt: [self client checkStatusCode: self xmlEventSuccessNode] raise: Error.
	self should: [self client checkStatusCode: self xmlEventFailureNode] raise: Error