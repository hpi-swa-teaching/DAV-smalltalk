setup
setUp

	super setUp.
	
	self calendar: (CalDavCalendar new url: self calendarUrl).
	self client: SabreCalDavClient new.
	CalDavClient registerClient: client for: self calendarUrl