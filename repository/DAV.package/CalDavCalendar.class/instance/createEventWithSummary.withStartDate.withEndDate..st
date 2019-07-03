creating events
createEventWithSummary: aSummary withStartDate: aStartData withEndDate: anEndDate

	| newEvent |
	
	newEvent := self newEvent.
	newEvent
			summary: aSummary; 
			start: aStartData;
			end: anEndDate.
	self addEvent: newEvent.
	
	^ newEvent
