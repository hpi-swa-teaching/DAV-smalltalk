helpers
serverCalendarWithOffset: anOffset

	| serverCalendar |

	serverCalendar := (self client newServerCalendarFor: self calendar).
	serverCalendar events add: (self serverDataWithOffset: anOffset).
	
	^ serverCalendar