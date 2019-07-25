tests - parsing
testParseEventICalData

	| dictionary |

	dictionary := self client parseEventICalData: self xmlEventNode.
	self assert: 'eTag' equals: (dictionary at: 'd:getetag').
	self assert: 'eventUrl' equals: (dictionary at: 'urlLocalPart').
	self assert: 1 equals: (dictionary at: 'calendarData') events size
