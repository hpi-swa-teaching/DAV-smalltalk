pushing events
createAndPushFullDayEvent: aSummary withDate: aDate 

	| newEvent |
	
	newEvent := self createFullDayEvent: aSummary Date: aDate. 
	self client forcePushEvent: newEvent.
		
	^ newEvent
