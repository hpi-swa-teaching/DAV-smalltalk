pushing events
createAndPushEventWithSummary: aSummary withStartDate: aStartData withEndDate: anEndDate

	| newEvent |
	
	newEvent := self createEventWithSummary: aSummary 
				withStartDate: aStartData 
				withEndDate: anEndDate.
	self client forcePushEvent: newEvent.
		
	^ newEvent
