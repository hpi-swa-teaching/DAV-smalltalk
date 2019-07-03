methods
davDelete: anUrl do: aBlock
	
	self initializeFromUrl: anUrl.

	^ self sendRequest: DAVDeleteQuery new do: aBlock