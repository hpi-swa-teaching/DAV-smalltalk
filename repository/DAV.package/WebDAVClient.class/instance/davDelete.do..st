methods
davDelete: anUrl do: aBlock
	
	| request |
	self initializeFromUrl: anUrl.
	
	request := DAVDeleteQuery new.
	request initializeFromUrl: anUrl.

	^ self sendRequest: request do: aBlock