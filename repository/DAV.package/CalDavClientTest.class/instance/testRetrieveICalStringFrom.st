tests - parsing
testRetrieveICalStringFrom

	| iCalString |

	iCalString := self client retrieveICalString: self xmlEventSuccessNode.
	
	self assert: self iCalData equals: iCalString