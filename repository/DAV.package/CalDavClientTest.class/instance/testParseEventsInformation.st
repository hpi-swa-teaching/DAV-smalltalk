tests - parsing
testParseEventsInformation

	| eventCollection |

	eventCollection := self client parseEventsInformation: self eventsXml.
	self assert: '"eTag"' equals: (eventCollection first at: 'getetag').
	self assert: 'eventUrl' equals: (eventCollection first at: 'urlLocalPart')
