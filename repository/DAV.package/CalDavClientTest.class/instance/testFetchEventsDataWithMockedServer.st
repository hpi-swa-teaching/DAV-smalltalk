tests - fetching
testFetchEventsDataWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEventsDataFrom: self eventUrlOnMockedServer.
	
	self assert: 'text/calendar' equals: ((eventData at: 1) at: #'d:getcontenttype').
	self assert: 'Sun, 09 Jun 2019 10:14:57 GMT' equals:
		((eventData at: 1) at: #'d:getlastmodified')