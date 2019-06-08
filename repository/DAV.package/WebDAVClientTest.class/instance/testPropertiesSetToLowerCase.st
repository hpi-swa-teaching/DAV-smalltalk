tests - queryCreation
testPropertiesSetToLowerCase
	
	self query properties: #('D:displayname' 'CS:getctag').
	self assert: query properties equals: #('d:displayname' 'cs:getctag')
	