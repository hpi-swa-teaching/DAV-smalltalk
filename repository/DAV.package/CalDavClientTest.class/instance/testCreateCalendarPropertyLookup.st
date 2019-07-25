tests - parsing
testCreateCalendarPropertyLookup

	| propertyLookup |

	propertyLookup := self client createCalendarPropertyLookup: self xmlCalendarNode.
	self assert: 'calendarName' equals: (propertyLookup at: #displayname).
	self assert: 'cTag' equals: (propertyLookup at: #getctag).
	self assert: 'syncToken' equals: (propertyLookup at: #'sync-token')