setup
setUp

	super setUp.
	
	self calendar: (CalDavCalendar new url: self calendarUrl asUrl).
	self client: SabreCalDavClient new.
	CalDavClient registerClient: client for: self calendarUrl