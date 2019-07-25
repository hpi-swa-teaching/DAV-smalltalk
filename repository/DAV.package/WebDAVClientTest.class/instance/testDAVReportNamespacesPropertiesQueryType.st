tests - methods
testDAVReportNamespacesPropertiesQueryType

	| url resp |

	url := self setUpMockedReportRoute.

	resp := self client davReport: url 
		namespaces: #() 
		properties: #() 
		queryType: 'c:calendar-query'.
		
	self assert: 200 equals: resp code