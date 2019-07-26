methods
davPut: anUrl data: aString do: aBlock

	| request |
	
	self initializeFromUrl: anUrl.
	
	request := DAVPutQuery new content: aString.
	request initializeFromUrl: anUrl.

	^ self sendRequest: request do: aBlock