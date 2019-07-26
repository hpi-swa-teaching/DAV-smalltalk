examples
example01CreateEvent: aCalDavCalendar
	
	| event  |
	
	event := aCalDavCalendar newEvent.			"create specific event for this calendar"
	event
			summary: 'Summary'; 
			start:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30);
			end: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
	event recurrenceRules add: ICRecurrenceRule weekly.
	aCalDavCalendar addEvent: event