tests - fetching
testFetchEventICalDataWithMockedServer

	| iCalCalendar iCalEvent |

	self setUpClientForMockedServer. 
	iCalCalendar := client fetchEventICalDataFrom: self eventUrlOnMockedServer.
	iCalEvent := iCalCalendar events first.
	
	self assert: 'EventSummary' equals: iCalEvent summary.
	self assert: 'IR0ZVPEGCS9T29V3D4F0X' equals: iCalEvent uid.
	self assert: (DateAndTime fromString: '2019-06-26T13:50:48+00:00')
		equals: iCalEvent created.
	self assert: (DateAndTime fromString: '2019-06-26T13:50:54+00:00')
		equals: iCalEvent lastModified.
	self assert: (Date fromString: '06.24.2019') equals: iCalEvent start.
	self assert: (Date fromString: '06.25.2019') equals: iCalEvent end