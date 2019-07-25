tests - fetching
testFetchEventsDataWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEventsDataFrom: self eventUrlOnMockedServer.
	
	self assert: 'text/calendar' equals: (eventData first at: #getcontenttype).
	self assert: 'Sun, 09 Jun 2019 10:14:57 GMT' equals:
		(eventData first at: #getlastmodified)