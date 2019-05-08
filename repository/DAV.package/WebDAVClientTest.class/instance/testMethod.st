tests - methods
testMethod

	query := DAVPropFindQuery new.
	self assert: query method = 'PROPFIND'.
	
	query := DAVReportQuery new.
	self assert: query method = 'REPORT'.