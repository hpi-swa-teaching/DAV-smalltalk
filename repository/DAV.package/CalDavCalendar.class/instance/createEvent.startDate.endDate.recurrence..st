creating events
createEvent: aSummary startDate: aStartDate endDate: anEndDate recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createEvent: aSummary startDate: aStartDate endDate: anEndDate.
	newEvent recurrenceRules add: aRecurrenceRule.
	self addEvent: newEvent.
	
	^ newEvent
