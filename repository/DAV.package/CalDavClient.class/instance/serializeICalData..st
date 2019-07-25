helpers
serializeICalData: iCalData

	^ (ICCalendarExporter calendar: iCalData) export dataStream contents