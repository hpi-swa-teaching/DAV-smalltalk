accessing
serverColor

	^ Color fromString: (self serverData at: #'ical:calendar-color')