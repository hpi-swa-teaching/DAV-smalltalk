methods
davGet: anUrl data: aString do: aBlock

	| request |
	
	self initializeFromUrl: anUrl.
	
	request := DAVGetQuery new content: aString.

	^ self sendRequest: request do: aBlock