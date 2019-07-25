helpers
vCalendarObjects

	| s vCalendarObjects |
	
	vCalendarObjects := OrderedCollection new.
	
	self halt.
	s := self client newServerCalendarFor: self calendar.
	
	^ vCalendarObjects