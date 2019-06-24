tests - accessors
testMethod

	self query: DAVPropfindQuery new.
	self assert: 'PROPFIND' equals: self query method.
	
	self query: DAVReportQuery new.
	self assert: 'REPORT' equals: self query method.
	
	self query: DAVGetQuery new.
	self assert: 'GET' equals: self query method.
	
	self query: DAVPutQuery new.
	self assert: 'PUT' equals: self query method