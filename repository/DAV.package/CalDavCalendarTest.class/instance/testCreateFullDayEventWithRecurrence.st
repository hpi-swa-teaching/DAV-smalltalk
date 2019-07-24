tests - handling events
testCreateFullDayEventWithRecurrence

	| summary date event recurrence |
	
	summary := 'aSummary'.
	date := (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30).
	recurrence := ICRecurrenceRule weekly.
	
	event := self calendar createFullDayEvent: summary
		Date: date
		Recurrence: recurrence.
		
	self assert: summary equals: event summary.
	self assert: date equals: event start.
	self assert: (date + 1 day) equals: event end.
	self assert: (event recurrenceRules includes: recurrence)	
	
