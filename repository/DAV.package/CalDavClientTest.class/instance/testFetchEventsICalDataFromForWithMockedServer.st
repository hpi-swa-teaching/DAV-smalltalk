tests - fetching
testFetchEventsICalDataFromForWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEventsICalDataFrom: self calendarUrlOnMockedServer for: {self eventUrlOnMockedServer}.
	
	self halt.

	self assert: 1 equals: eventData size.
	
	self assert: 	'eventUrl' 
		equals: ((eventData at: 1) at: #urlLocalPart).
	self assert: '"eTag"' equals: ((eventData at: 1) at: #'d:getetag').
	self assert: self iCalData
		equals: ((eventData at: 1) at: #'calendar-data').