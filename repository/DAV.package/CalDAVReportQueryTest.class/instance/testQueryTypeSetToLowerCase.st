tests - accessors
testQueryTypeSetToLowerCase

	self query type: self query validQueryTypes first asUppercase.
	self assert: self query validQueryTypes first asLowercase equals: self query type