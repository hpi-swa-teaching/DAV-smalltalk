examples
example05CreateAndPushEvent

	| calendar event recurrentEvent fullDayEvent |
	"calendar must be already set up"
	"events are created locally and pushed on the server"
	
	event := calendar createAndPushEvent: 'Summary'
		startDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		endDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
		
	recurrentEvent := calendar createAndPushEvent: 'Summary'
		StartDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		EndDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0)
		Recurrence: ICRecurrenceRule weekly.
		
	fullDayEvent := calendar createAndPushFullDayEventWithSummary: 'Summary'
		withDate:  (Date year: 2019 month: #June day: 26)
		withRecurrence: ICRecurrenceRule weekly.
	