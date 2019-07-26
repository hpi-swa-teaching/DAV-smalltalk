tests - url handling
testCreatedRandomIdSchouldBeDifferent

	| id1 id2|

	id1 := self client newRandomId.
	id2 := self client newRandomId.
	
	self assert: (id1 ~= id2)

