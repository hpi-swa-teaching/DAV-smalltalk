tests - instanceCreation
testEmptyDAVReportQuery

	self query: DAVReportQuery empty.
	self assert: self query body equals:  '<?xml  version="1.0" ?>'.
	self assert: self query method equals: 'REPORT'