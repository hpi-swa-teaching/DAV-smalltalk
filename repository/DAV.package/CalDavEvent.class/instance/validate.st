manipulating
validate

	self isDirty
		ifTrue: [Warning signal: 
			'Event isn`t assigned to any calendar object or has been deleted']