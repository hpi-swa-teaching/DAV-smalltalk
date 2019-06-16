parsing
handleSerializedEventData: anEventString

	| newEventStrings newData methodString |
	
	methodString := (Character cr asString, 'METHOD:PUBLISH') withUnixLineEndings.
	newEventStrings := (anEventString subStrings: (Array with: Character cr)) select: [:line | line ~= methodString].	
	newData := ''.
	newEventStrings do: [:elem | newData := (newData, elem)].

	^ newData
		