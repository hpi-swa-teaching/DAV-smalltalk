tests - accessors
testCreateFilters

	| firstFilter secondFilter |

	self query createFilters:
		#(('c:comp-filter' #(('name' 'VCALENDAR'))) ('c:comp-filter' #(('name' 'VTODO')))).
	firstFilter := self query filters first.
	secondFilter := self query filters second.
	
	self assert: 'c:comp-filter' equals: firstFilter type.
	self assert: 'VCALENDAR' equals: (firstFilter attributesDictionary at: 'name').
	self assert: 'VTODO' equals: (secondFilter attributesDictionary at: 'name')