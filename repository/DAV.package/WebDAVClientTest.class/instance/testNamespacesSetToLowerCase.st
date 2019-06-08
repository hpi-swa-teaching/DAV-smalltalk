tests - queryCreation
testNamespacesSetToLowerCase
	
	self query namespaces: #((CS 'HTTP//calendarserver.org/ns/')).
	self assert: query properties equals: #(#('cs' 'http//calendarserver.org/ns/'))
	