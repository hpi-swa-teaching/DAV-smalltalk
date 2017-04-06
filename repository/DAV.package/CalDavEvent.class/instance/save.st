accessing
save

	self isDirty ifTrue: [self etag: (self calendar client saveEvent: self serverCalendar to: self url at: self etag)]