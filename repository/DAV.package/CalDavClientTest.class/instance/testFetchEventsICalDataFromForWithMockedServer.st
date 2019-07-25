tests - fetching
testFetchEventsICalDataFromForWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEventsICalDataFrom: self calendarUrlOnMockedServer for:
		{self eventUrlOnMockedServer}.
	
	self assert: 1 equals: eventData size.
	
	self assert: 	'eventUrl' 
		equals: ((eventData at: 1) at: #urlLocalPart).
	self assert: '"eTag"' equals: ((eventData at: 1) at: #getetag).
	self assert: '-//ownCloud calendar v1.6.2' equals: ((eventData at: 1) at: #'calendarData') productId