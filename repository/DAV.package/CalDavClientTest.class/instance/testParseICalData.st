tests - parsing
testParseICalData

	| event |

	event := (self client parseICalData: self iCalData) events first.
	self assert: (DateAndTime fromString: '2019-06-26T13:50:54+00:00') equals: event stamp.
	self assert: 'IR0ZVPEGCS9T29V3D4F0X' equals: event uid.
	self assert: (Date fromString: '24 June 2019') equals: event start.
	self assert: (DateAndTime fromString: '2019-06-26T13:50:48+00:00') equals: event created