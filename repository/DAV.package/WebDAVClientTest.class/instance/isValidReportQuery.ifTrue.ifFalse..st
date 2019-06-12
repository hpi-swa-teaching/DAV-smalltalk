helpers
isValidReportQuery: aDAVReportQuery ifTrue: aTrueBlock ifFalse: aFalseBlock

	((aDAVReportQuery method = 'REPORT') and: (self isValidDAVQuery: aDAVReportQuery))
		ifTrue: [aTrueBlock value]
		ifFalse: [aFalseBlock value]