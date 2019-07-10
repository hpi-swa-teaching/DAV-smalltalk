creating events
createEvent: aSummary StartDate: aStartData EndDate: anEndDate

	| newEvent |
	
	newEvent := self newEvent.
	newEvent
			summary: aSummary; 
			start: aStartData;
			end: anEndDate.
	self addEvent: newEvent.
	
	^ newEvent
