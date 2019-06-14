tests - accessors
testPropertiesSetToLowerCase
	
	self query properties: #('D:displayname' 'CS:getctag').
	self assert: #('d:displayname' 'cs:getctag') equals:  query properties