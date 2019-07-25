creating events
createEvent: aSummary startDate: aStartDate endDate: anEndDate

	| newEvent |
	
	newEvent := self newEvent.
	newEvent
			summary: aSummary; 
			start: aStartDate;
			end: anEndDate.
	self addEvent: newEvent.
	
	^ newEvent
