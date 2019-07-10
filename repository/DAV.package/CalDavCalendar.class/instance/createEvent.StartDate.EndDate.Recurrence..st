creating events
createEvent: aSummary StartDate: aStartData EndDate: anEndDate Recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self newEvent.
	newEvent 
			summary: aSummary; 
			start: aStartData;
			end: anEndDate.
	newEvent recurrenceRules add: aRecurrenceRule.
	self addEvent: newEvent.
	
	^ newEvent
