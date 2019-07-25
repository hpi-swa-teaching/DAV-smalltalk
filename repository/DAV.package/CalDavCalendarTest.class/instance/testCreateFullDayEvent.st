tests - handling events
testCreateFullDayEvent

	| summary date event |
	
	summary := 'aSummary'.
	date := (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30).
	
	event := self calendar createFullDayEvent: summary
		Date: date.
		
	self assert: summary equals: event summary.
	self assert: date equals: event start.
	self assert: (date + 1 day) equals: event end
