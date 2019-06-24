parsing
serializeEvent: anEvent

	^ (ICCalendarExporter calendar: anEvent serverCalendar) export export dataStream contents
	