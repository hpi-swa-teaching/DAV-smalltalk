updating
determineUrlsToRemove: updateInformation

	^ ((self eventsDictionary keys) 
			difference: (updateInformation collect: [:href | href at: #urlLocalPart asSymbol]))
				