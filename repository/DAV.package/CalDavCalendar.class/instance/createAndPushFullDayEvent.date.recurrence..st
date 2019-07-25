pushing events
createAndPushFullDayEvent: aSummary date: aDate recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createFullDayEvent: aSummary 
				date: aDate 
				recurrence: aRecurrenceRule.
	self client forcePushEvent: newEvent.
		
	^ newEvent
