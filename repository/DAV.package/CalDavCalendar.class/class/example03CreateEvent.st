examples
example03CreateEvent

	| calendar event recurrentEvent fullDayEvent |
	"calendar must be already set up"
	"events are created locally but not pushed on the server"
	
	event := calendar createEvent: 'Summary'
		startDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		endDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
		
	recurrentEvent := calendar createEvent: 'Summary'
		startDate:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30)
		endDate: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0)
		recurrence: ICRecurrenceRule weekly.
		
	fullDayEvent := calendar createFullDayEvent: 'Summary'
		date:  (Date year: 2019 month: #June day: 26)
		recurrence: ICRecurrenceRule weekly.
	