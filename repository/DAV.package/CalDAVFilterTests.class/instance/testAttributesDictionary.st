tests - accessors
testAttributesDictionary

	self filter attributes: #(('name' 'VCALENDAR')).
	self assert: (filter attributesDictionary at: 'name') equals: 'VCALENDAR'