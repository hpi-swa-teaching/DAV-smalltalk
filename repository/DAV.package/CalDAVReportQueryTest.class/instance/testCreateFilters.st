tests - accessors
testCreateFilters

	| firstFilter secondFilter |

	self query createFilters: #(('c:comp-filter' #(('name' 'VCALENDAR'))) ('c:comp-filter' #(('name' 'VTODO')))).
	firstFilter := self query filters first.
	secondFilter := self query filters second.
	self assert: firstFilter type equals: 'c:comp-filter'.
	self assert: (firstFilter attributesDictionary at: 'name') equals: 'VCALENDAR'.
	self assert: (secondFilter attributesDictionary at: 'name') equals: 'VTODO'