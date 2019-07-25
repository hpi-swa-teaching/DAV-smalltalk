tests - parsing
testCreateEventPropertyLookup

	| propertyLookup |

	propertyLookup := self client createEventPropertyLookup: self xmlEventPropNode elements.
	self assert: self iCalData equals: (propertyLookup at: #'calendar-data').
	self assert: 'eTag' equals: (propertyLookup at: #getetag)