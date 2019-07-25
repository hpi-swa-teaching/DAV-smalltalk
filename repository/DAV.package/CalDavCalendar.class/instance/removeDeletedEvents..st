updating
removeDeletedEvents: updateInformation

	| urlsToRemove event |
	urlsToRemove := ((self eventsDictionary keys) 
						difference: (updateInformation collect: [:info | info at: #urlLocalPart asSymbol])).
				
	urlsToRemove do: [ :elem |
		event := self eventsDictionary at: elem ifAbsent: [nil].
		event 
			ifNotNil: [event setDirty].
		self eventsDictionary removeKey: elem ifAbsent: [].
		].