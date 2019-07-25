tests - parsing
testParseEventInformation

	| dictionary |

	dictionary := self client parseEventInformation: self xmlEventSuccessNode.
	self assert: 'eTag' equals: (dictionary at: 'getetag').
	self assert: 'eventUrl' equals: (dictionary at: 'urlLocalPart')
