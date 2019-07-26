pushing events
createAndPushEvent: aSummary startDate: aStartData endDate: anEndDate

	| newEvent |
	
	newEvent := self createEvent: aSummary 
					startDate: aStartData 
					endDate: anEndDate.
	self client forcePushEvent: newEvent.
		
	^ newEvent
