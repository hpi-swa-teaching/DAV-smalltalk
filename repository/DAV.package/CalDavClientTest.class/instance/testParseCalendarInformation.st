tests - parsing
testParseCalendarInformation

	| dictionary |

	dictionary := self client parseCalendarInformation: self calendarXml.
	self assert: 'calendarName' equals: (dictionary at: 'displayname').
	self assert: 'cTag' equals: (dictionary at: 'getctag').
	self assert: 'syncToken' equals: (dictionary at: 'sync-token')
