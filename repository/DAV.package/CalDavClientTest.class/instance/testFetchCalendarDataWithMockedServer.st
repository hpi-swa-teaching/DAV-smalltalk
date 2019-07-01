tests - fetching
testFetchCalendarDataWithMockedServer

	| calendarData |

	self setUpClientForMockedServer.
	calendarData := self client fetchCalendarDataFrom: self calendarUrlOnMockedServer.
	
	self assert: 'calendarName' equals: (calendarData at: #'d:displayname').
	