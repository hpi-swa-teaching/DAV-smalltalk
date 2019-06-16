parsing
handleSerializedEventData: anEventString

	| newEventStrings newData methodString |
	
	methodString := 'METHOD:'.
	newEventStrings := (anEventString subStrings: (Array with: Character cr)) select: [:line | (line includesSubString: methodString) not].	
	newData := ''.
	newEventStrings do: [:elem | newData := (newData, elem)].
	^ newData
		