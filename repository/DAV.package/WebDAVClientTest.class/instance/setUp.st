setup
setUp

	super setUp.
	self client: WebDAVClient new.
	self query: WebDAVQuery new