usage
exampleUpdateCalendar

	| calendar events |
	"calendar must be already set up"
	
	calendar updateCalendar.			"update calendar name / calendar color"
	calendar updateEvents.				"delete no more existing events and pull new created events"
	
	events := calendar events.