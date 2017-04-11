accessing
save

	self isDirty ifTrue: [self etag: (self client saveEvent: self serverCalendar to: self url at: self etag)].
	self setClean.