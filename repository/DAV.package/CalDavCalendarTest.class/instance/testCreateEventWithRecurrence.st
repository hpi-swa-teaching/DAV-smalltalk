tests - handling events
testCreateEventWithRecurrence

	| summary startDate endDate recurrence event |
	
	summary := 'aSummary'.
	startDate := (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30).
	endDate := (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
	recurrence := ICRecurrenceRule weekly.
	
	event := self calendar createEvent: summary
		StartDate:  startDate
		EndDate: endDate
		Recurrence: recurrence.
		
	self assert: summary equals: event summary.
	self assert: startDate equals: event start.
	self assert: endDate equals: event end.
	self assert: (event recurrenceRules includes: recurrence)	
