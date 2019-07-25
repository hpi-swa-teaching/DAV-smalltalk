tests - parsing
testTagWithoutNamespace

	self assert: 'displayname' equals: (self client tagWithoutNamespace: 'd:displayname').
	self assert: 'displayname' equals: (self client tagWithoutNamespace: #'d:displayname')