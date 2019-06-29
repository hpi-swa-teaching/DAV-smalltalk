pushing events
createAndPushFullDayEventWithSummary: aSummary withDate: aDate 

	| newEvent |
	
	newEvent := self createFullDayEventWithSummary: aSummary withDate: aDate. 
	self client forcePushEvent: newEvent.
		
	^ newEvent
