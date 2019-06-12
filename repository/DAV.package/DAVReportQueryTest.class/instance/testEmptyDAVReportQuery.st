tests - instanceCreation
testEmptyDAVReportQuery

	self query: DAVReportQuery empty.
	self assert: '<?xml  version="1.0" ?>' equals: self query body.
	self assert: 'REPORT' equals: self query method