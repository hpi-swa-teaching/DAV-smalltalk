methods
davPut: anUrl data: aString do: aBlock

	| request |
	
	self initializeFromUrl: anUrl.
	
	request := DAVPutQuery new content: aString.

	^ self sendRequest: request do: aBlock