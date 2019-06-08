as yet unclassified
testQueryTypeSetToLowerCase

	self query type: self query validQueryTypes first asUppercase.
	self assert: self query type equals: self query validQueryTypes first asLowercase