pushing events
createAndPushFullDayEvent: aSummary withDate: aDate 

	| newEvent |
	
	newEvent := self createFullDayEvent: aSummary date: aDate. 
	self client forcePushEvent: newEvent.
		
	^ newEvent
