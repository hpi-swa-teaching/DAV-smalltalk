tests - handling events
testCreateEvent

	| summary startDate endDate event |
	
	summary := 'aSummary'.
	startDate := (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30).
	endDate := (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
	
	event := self calendar createEvent: summary
		StartDate:  startDate
		EndDate: endDate.
		
	self assert: summary equals: event summary.
	self assert: startDate equals: event start.
	self assert: endDate equals: event end
