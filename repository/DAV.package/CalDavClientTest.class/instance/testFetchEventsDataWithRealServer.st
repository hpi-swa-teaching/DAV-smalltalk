tests - fetching
testFetchEventsDataWithRealServer

	| eventData |

	self setUpClientForRealServer. 
	eventData := client fetchEventsDataFrom: self calendarUrlOnRealServer.
	
	self assert: 2 equals: eventData size.
	
	self assert: 'text/calendar' equals: ((eventData at: 1) at: #getcontenttype).
	self assert: 'Sun, 09 Jun 2019 10:14:57 GMT' equals:
		((eventData at: 1) at: #getlastmodified).
		
	self assert: 'text/calendar' equals: ((eventData at: 2) at: #getcontenttype).
	self assert: 'Sun, 09 Jun 2019 10:23:16 GMT' equals:
		((eventData at: 2) at: #getlastmodified)