tests - parsing
testParseEventsICalData

	| eventCollection |

	eventCollection := self client parseEventsICalData: self eventsXml.
	self assert: '"eTag"' equals: (eventCollection first at: 'getetag').
	self assert: 'eventUrl' equals: (eventCollection first at: 'urlLocalPart').
	self assert: 1 equals: (eventCollection first at: 'calendarData') events size
