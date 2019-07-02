tests - instanceCreation
testNewWithUrlAndNamespacesAndProperties

	self query: (WebDAVQuery
					url: 'https://www.testUrl.de/calendar'
					namespaces: #((cs 'https://www.caldavserver.com/ns'))
					properties: #('d:getetag')).
	
	self assert: '/calendar' equals: self query url.
	self assert: (self query properties includes: 'd:getetag').
	self assert: (self query namespaces includes: #(cs 'https://www.caldavserver.com/ns'))