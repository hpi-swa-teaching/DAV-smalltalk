instance creation
registerClient: aCalDavClient for: anUrl 

	self ClientRegistry at: anUrl asUrl authority put: aCalDavClient