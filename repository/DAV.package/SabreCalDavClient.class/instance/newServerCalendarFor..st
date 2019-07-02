events handling
newServerCalendarFor: aCalDavCalendar

	^ ICCalendar new
		method: 'PUBLISH';
		version: '2.0'