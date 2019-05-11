setup
setUp

	super setUp.
	query := WebDAVQuery new.
	server := WebServer new listenOn: self port.