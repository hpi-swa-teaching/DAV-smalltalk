tests - accessors
testNameSpacesDictionary

	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	self assert: 'https://www.caldavserver.com/ns' equals:
		(query namespacesDictionary at: 'xmlns:cs')