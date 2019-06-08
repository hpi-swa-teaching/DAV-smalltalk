tests - queryCreation
testQueryCreation

	self assert: self query namespaces isEmpty.
	self assert: self query properties isEmpty.
	self assert: self query rawUrl isEmpty.
	self assert: (self query headerAt: 'Prefer') equals: 'return-minimal'.
	self assert: (self query headerAt: 'Depth') equals: '0'.
	self assert: (self query headerAt: 'Content-Type') equals: 'application/xml'.
	