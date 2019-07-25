examples
example02UpdateCalendar: aCalDavCalendar

	| events |
	"calendar must be already set up"
	
	aCalDavCalendar updateCalendar.			"update calendar name / calendar color"
	aCalDavCalendar updateEvents.			"delete no more existing events and pull new created events"
	
	events := aCalDavCalendar events