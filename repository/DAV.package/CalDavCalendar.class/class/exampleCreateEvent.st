usage
exampleCreateEvent

	| calendar event recurrentEvent fullDayEvent |
	"calendar must be already set up"
	"events are created locally but not pushed on the server"
	
	event := calendar createEvent: 'Summary'
		StartDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		EndDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
		
	recurrentEvent := calendar createEvent: 'Summary'
		StartDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		EndDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0)
		Recurrence: ICRecurrenceRule weekly.
		
	fullDayEvent := calendar createFullDayEvent: 'Summary'
		Date:  (Date year: 2019 month: #June day: 26)
		Recurrence: ICRecurrenceRule weekly.
	