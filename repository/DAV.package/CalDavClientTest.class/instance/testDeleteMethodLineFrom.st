tests - parsing
testDeleteMethodLineFrom

	self assert: self iCalData equals:
		(self client deleteMethodLineFrom: self iCalData) withInternetLineEndings
