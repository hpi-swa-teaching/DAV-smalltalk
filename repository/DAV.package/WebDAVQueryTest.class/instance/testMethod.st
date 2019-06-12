tests - accessors
testMethod

	query := DAVPropfindQuery new.
	self assert: 'PROPFIND' equals: query method.
	
	query := DAVReportQuery new.
	self assert: 'REPORT' equals: query method.