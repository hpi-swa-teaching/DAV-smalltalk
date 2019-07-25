setup
setUp

	super setUp.
	self client: CalDavClient new.
	self query: DAVGetQuery new.
	self calendar: CalDavCalendar new.
	self setUpDefaultRouteOnMockedServer.
	self setUpCalendarRouteOnMockedServer.
	self setUpEventRouteOnMockedServer