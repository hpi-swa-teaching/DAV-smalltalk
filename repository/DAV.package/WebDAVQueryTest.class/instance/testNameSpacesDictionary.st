tests - accessors
testNameSpacesDictionary

	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	self assert: (query namespacesDictionary at: 'xmlns:cs') equals: 'https://www.caldavserver.com/ns'