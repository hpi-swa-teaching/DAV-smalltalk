creating events
createFullDayEvent: aSummary date: aDate

	| newEvent |
	
	newEvent := self newEvent.
	newEvent 
			summary: aSummary;
			start: aDate;
			end: aDate + 1 day.
	self addEvent: newEvent.
	
	^ newEvent
