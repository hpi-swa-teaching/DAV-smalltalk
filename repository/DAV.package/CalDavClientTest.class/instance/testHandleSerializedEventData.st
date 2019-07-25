tests - parsing
testHandleSerializedEventData

	self assert: self iCalData equals: (self client deleteMethodLineFrom: self iCalData)
