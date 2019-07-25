tests - fetching
testFetchEventsICalDataFromFor

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEventsDataFrom: self calendarUrlOnMockedServer for:
		{self eventUrlOnMockedServer}.

	self assert: 1 equals: eventData size.
	
	self assert: 	'eventUrl' equals: ((eventData at: 1) at: #urlLocalPart).
	self assert: '"eTag"' equals: ((eventData at: 1) at: #getetag).
	self assert: 'Sun, 09 Jun 2019 10:14:57 GMT'
		equals: ((eventData at: 1) at: #getlastmodified).
	self assert: 'text/calendar' equals: ((eventData at: 1) at: #getcontenttype)