tests - accessors
testNamespacesSetToLowerCase
	
	self query namespaces: #((CS 'HTTP//calendarserver.org/ns/')).
	self assert: #(#(cs 'http//calendarserver.org/ns/')) equals: query namespaces