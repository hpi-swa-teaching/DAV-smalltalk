tests - fetching
testFetchEventsICalDataFromWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := self client fetchEventsICalDataFrom: self calendarUrlOnMockedServer.
	
	self assert: 1 equals: eventData size.
	
	self assert: 	'eventUrl' 
		equals: (eventData first at: #urlLocalPart).
	self assert: '"eTag"' equals: (eventData first at: #getetag).
	self assert: '-//ownCloud calendar v1.6.2' equals: (eventData first at: #'calendarData') productId