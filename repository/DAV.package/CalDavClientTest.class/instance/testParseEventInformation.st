tests - parsing
testParseEventInformation

	| dictionary |

	dictionary := self client parseEventInformation: self xmlEventNode.
	self assert: 'eTag' equals: (dictionary at: 'd:getetag').
	self assert: 'eventUrl' equals: (dictionary at: 'urlLocalPart')
