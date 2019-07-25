usage
example01CreateEvent	
	
	| event calendar |
	
	event := calendar newEvent.			"create specific event for this calendar"
	event
			summary: 'Summary'; 
			start:  (DateAndTime year: 2019 month: #July day: 15 hour: 14 minute: 30);
			end: (DateAndTime year: 2019 month: #July day: 15 hour: 17 minute: 0).
	event recurrenceRules add: ICRecurrenceRule weekly.
	calendar addEvent: event