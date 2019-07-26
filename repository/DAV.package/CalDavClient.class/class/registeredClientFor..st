instance creation
registeredClientFor: url

	^ self ClientRegistry at: url authority  