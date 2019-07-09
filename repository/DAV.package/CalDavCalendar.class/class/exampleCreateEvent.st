usage
exampleCreateEvent

	| calendar event recurrentEvent fullDayEvent |
	"calendar must be already set up"
	"events are created locally but not pushed on the server"
	
	event := calendar createEventWithSummary: 'Summary'
		withStartDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		withEndDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
		
	recurrentEvent := calendar createEventWithSummary: 'Summary'
		withStartDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		withEndDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0)
		withRecurrence: ICRecurrenceRule weekly.
		
	fullDayEvent := calendar createFullDayEventWithSummary: 'Summary'
		withDate:  (Date year: 2019 month: #June day: 26)
		withRecurrence: ICRecurrenceRule weekly.
	