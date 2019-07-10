pushing events
createAndPushFullDayEvent: aSummary Date: aDate Recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createFullDayEvent: aSummary 
				Date: aDate 
				Recurrence: aRecurrenceRule.
	self client forcePushEvent: newEvent.
		
	^ newEvent
