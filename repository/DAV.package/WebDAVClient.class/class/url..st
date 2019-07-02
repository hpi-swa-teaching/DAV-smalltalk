instance creation
url: anUrlString

	^ (self new)
		initializeFromUrl: anUrlString;
		yourself