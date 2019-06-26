setup
setUpClientForMockedServer

	self client: (SabreCalDavClient url: self setUpDefaultMockedRoute username: '' password: '').
	
	^ self setUpDefaultMockedRoute