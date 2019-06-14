tests - instanceCreation
testFilterCreation

	self filter: (CalDAVFilter type: 'c:comp-filter' attributes: #(('name' 'VCALENDAR'))).
	self assert: self filter type equals: 'c:comp-filter'.
	self assert: (self filter attributesDictionary at: 'name') equals: 'VCALENDAR'