pushing events
createAndPushEventWithSummary: aSummary withStartDate: aStartData withEndDate: anEndDate withRecurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createEventWithSummary: aSummary 
			withStartDate: aStartData 
			withEndDate: anEndDate 
			withRecurrence: aRecurrenceRule.
	self client forcePushEvent: newEvent.
		
	^ newEvent
