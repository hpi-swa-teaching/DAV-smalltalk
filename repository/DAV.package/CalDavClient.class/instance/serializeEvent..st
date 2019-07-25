parsing
serializeEvent: anEvent

	^ (ICCalendarExporter calendar: anEvent serverCalendar) export dataStream contents
	