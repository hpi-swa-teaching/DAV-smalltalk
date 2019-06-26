tests - fetching
testFetchCalendarDataWithRealServer

	| url calendarData |

	url := self setUpClientForRealServer.
	calendarData := self client fetchCalendarDataFrom: url.
	
	self assert: 'Cal 1' equals: (calendarData at: #'d:displayname').
	