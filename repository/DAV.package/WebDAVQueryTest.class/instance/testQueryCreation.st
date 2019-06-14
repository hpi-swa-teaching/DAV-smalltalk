tests - instanceCreation
testQueryCreation

	self assert: self query namespaces isEmpty.
	self assert: self query properties isEmpty.
	self assert: self query fullUrl isEmpty.
	self assert: 'return-minimal' equals: (self query headerAt: 'Prefer').
	self assert: '0' equals: (self query headerAt: 'Depth').
	self assert: 'application/xml' equals: (self query headerAt: 'Content-Type')