tests - methods
testDAVPropfindWithRealServer

	 | url resp |

	url := self setUpRealTestServer.	
	self query: (DAVPropfindQuery url: url namespaces: #() properties: #('d:displayname')).

	resp := self client sendRequest: self query.
	self assert: 207 equals: resp code.
	self assert: (resp content includesSubString: '<d:displayname>Cal 1</d:displayname>')