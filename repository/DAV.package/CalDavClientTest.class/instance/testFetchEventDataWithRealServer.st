tests - fetching
testFetchEventDataWithRealServer

	| eventData |
	
	self setUpClientForRealServer.
	
	eventData := client fetchEventDataFrom: self eventUrlOnRealServer.

	
	self assert: '"54185"' equals: (eventData at: #'d:getetag').
	self assert: 'Sun, 09 Jun 2019 10:14:57 GMT' equals: (eventData at: #'d:getlastmodified').
	