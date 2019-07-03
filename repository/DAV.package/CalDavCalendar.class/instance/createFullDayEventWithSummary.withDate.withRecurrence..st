creating events
createFullDayEventWithSummary: aSummary withDate: aDate withRecurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self newEvent.
	newEvent 
			summary: aSummary;
			start: aDate;
			end: aDate + 1 day.
	newEvent recurrenceRules add: aRecurrenceRule.
	self addEvent: newEvent.
	
	^ newEvent
