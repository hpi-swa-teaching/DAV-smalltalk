pushing events
createAndPushEven: aSummary StartDate: aStartData EndDate: anEndDate Recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createEvent: aSummary 
			StartDate: aStartData 
			EndDate: anEndDate 
			Recurrence: aRecurrenceRule.
	self client forcePushEvent: newEvent.
		
	^ newEvent
