updating
removeDeletedEvents: updateInformation

	| urlsToRemove |
	urlsToRemove := ((self eventsDictionary keys) 
						difference: (updateInformation collect: [:info | info at: #urlLocalPart asSymbol])).
				
	urlsToRemove do: [ :elem |
		self eventsDictionary removeKey: elem ifAbsent: [].
		].