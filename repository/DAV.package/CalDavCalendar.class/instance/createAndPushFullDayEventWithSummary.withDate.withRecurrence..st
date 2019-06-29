pushing events
createAndPushFullDayEventWithSummary: aSummary withDate: aDate withRecurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createFullDayEventWithSummary: aSummary 
				withDate: aDate 
				withRecurrence: aRecurrenceRule.
	self client forcePushEvent: newEvent.
		
	^ newEvent
