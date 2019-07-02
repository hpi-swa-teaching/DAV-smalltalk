tests - fetching
testFetchEventDataWithMockedServer

	| eventData |
	
	self setUpClientForMockedServer.
	
	eventData := client fetchEventDataFrom: self eventUrlOnMockedServer.

	self assert: 'Sun, 09 Jun 2019 10:14:57 GMT' equals: (eventData at: #'d:getlastmodified').
	self assert: '"eTag"' equals: (eventData at: #'d:getetag').
	self assert: 'text/calendar' equals: (eventData at: #'d:getcontenttype')