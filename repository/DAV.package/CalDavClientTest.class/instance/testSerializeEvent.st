tests - parsing
testSerializeEvent

	self assert: self serializedEvent equals: (self client serializeEvent: self calDavEvent)
