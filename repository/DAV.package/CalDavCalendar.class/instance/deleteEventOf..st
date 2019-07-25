updating
deleteEventOf: anUrl
	
	| event |
	
	event := self eventsDictionary at: url ifAbsent: [nil].
	event 
			ifNotNil: [event setDirty].
			self eventsDictionary removeKey: url ifAbsent: []