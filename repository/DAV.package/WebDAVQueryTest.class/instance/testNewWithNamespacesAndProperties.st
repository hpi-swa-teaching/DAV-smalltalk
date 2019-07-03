tests - instanceCreation
testNewWithNamespacesAndProperties

	self query: (WebDAVQuery
					namespaces: #((cs 'https://www.caldavserver.com/ns'))
					properties: #('d:getetag')).
					
	self assert: (self query properties includes: 'd:getetag').
	self assert: (self query namespaces includes: #(cs 'https://www.caldavserver.com/ns'))