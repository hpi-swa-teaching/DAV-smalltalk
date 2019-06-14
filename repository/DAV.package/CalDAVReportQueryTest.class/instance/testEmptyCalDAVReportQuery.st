tests - instanceCreation
testEmptyCalDAVReportQuery

	| queryTypeRegex |

	self query: CalDAVReportQuery empty.
	queryTypeRegex := self query defaultQueryType copyReplaceAll: ':' with: '\:'.
	self assert: (self query body matchesRegex:
		'<\?xml  version="1.0" \?>\s*<', queryTypeRegex,
		' xmlns\:d="DAV\:">\s*</', queryTypeRegex, '>').
	self assert: 'REPORT' equals: self query method