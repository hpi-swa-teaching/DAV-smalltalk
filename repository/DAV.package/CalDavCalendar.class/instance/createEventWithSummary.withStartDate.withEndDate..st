events handling
createEventWithSummary: aSummary withStartDate: aStartData withEndDate: anEndDate

	| newEvent |
	
	newEvent := self newEvent.
	newEvent serverData summary: aSummary.
	newEvent serverData 
		start: aStartData;
		end: anEndDate.
	self addEvent: newEvent.
	
	^ newEvent
