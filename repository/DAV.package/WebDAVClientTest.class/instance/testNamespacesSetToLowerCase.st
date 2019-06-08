tests - queryCreation
testNamespacesSetToLowerCase
	
	self query namespaces: #((CS 'HTTP//calendarserver.org/ns/')).
	self assert: query namespaces equals: #(#(cs 'http//calendarserver.org/ns/'))
	