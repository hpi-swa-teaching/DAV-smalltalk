tests - parsing
testParseCalendarInformation

	| dictionary |

	dictionary := self client parseCalendarInformation: self calendarXml.
	self assert: 'calendarName' equals: (dictionary at: 'd:displayname').
	self assert: 'cTag' equals: (dictionary at: 'cs:getctag').
	self assert: 'syncToken' equals: (dictionary at: 'd:sync-token')
