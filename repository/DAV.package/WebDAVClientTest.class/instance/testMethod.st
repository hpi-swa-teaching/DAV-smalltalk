tests - methods
testMethod

	query := DAVPropfindQuery new.
	self assert: query method = 'PROPFIND'.
	
	query := DAVReportQuery new.
	self assert: query method = 'REPORT'.