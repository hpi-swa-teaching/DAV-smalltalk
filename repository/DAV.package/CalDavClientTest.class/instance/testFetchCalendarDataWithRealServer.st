tests - fetching
testFetchCalendarDataWithRealServer

	| calendarData |

	self setUpClientForRealServer.
	calendarData := self client fetchCalendarDataFrom: self calendarUrlOnRealServer.
	
	self assert: 'Cal 1' equals: (calendarData at: #'d:displayname').
	