setup
setUp

	super setUp.
	self client: CalDavClient new.
	self query: DAVGetQuery new.
