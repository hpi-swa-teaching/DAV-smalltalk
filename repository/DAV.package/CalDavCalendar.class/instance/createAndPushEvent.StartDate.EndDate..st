pushing events
createAndPushEvent: aSummary StartDate: aStartData EndDate: anEndDate

	| newEvent |
	
	newEvent := self createEvent: aSummary 
				StartDate: aStartData 
				EndDate: anEndDate.
	self client forcePushEvent: newEvent.
		
	^ newEvent
