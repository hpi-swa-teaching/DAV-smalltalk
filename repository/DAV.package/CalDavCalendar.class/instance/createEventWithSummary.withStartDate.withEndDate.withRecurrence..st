creating events
createEventWithSummary: aSummary withStartDate: aStartData withEndDate: anEndDate withRecurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self newEvent.
	newEvent 
			summary: aSummary; 
			start: aStartData;
			end: anEndDate.
	newEvent recurrenceRules add: aRecurrenceRule.
	self addEvent: newEvent.
	
	^ newEvent
