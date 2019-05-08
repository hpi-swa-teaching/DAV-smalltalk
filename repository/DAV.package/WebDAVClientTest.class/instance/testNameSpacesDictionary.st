tests - xml
testNameSpacesDictionary

	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	self assert: (query namespacesDictionary at: 'xmlns:cs') = 		'https://www.caldavserver.com/ns'