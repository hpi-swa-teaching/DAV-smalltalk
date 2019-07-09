creating events
createFullDayEvent: aSummary Date: aDate Recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self newEvent.
	newEvent 
			summary: aSummary;
			start: aDate;
			end: aDate + 1 day.
	newEvent recurrenceRules add: aRecurrenceRule.
	self addEvent: newEvent.
	
	^ newEvent
