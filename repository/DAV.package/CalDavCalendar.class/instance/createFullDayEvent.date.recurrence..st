creating events
createFullDayEvent: aSummary date: aDate recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createFullDayEvent: aSummary date: aDate.
	newEvent recurrenceRules add: aRecurrenceRule.
	self addEvent: newEvent.
	
	^ newEvent
