pushing events
createAndPushEvent: aSummary StartDate: aStartData EndDate: anEndDate Recurrence: aRecurrenceRule

	| newEvent |
	
	newEvent := self createEvent: aSummary 
					startDate: aStartData 
					endDate: anEndDate
					recurrence: aRecurrenceRule.
	self client forcePushEvent: newEvent.
		
	^ newEvent