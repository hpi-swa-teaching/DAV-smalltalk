manipulating
updateICalData

	| iCalendar |

	iCalendar := self client fetchEventICalDataFrom: self url asString.
	
	self serverCalendar: iCalendar.
	self serverData: iCalendar events first.
	
	^ self
