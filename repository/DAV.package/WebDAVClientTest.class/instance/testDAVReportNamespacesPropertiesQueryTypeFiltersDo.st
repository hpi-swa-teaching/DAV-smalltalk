tests - methods
testDAVReportNamespacesPropertiesQueryTypeFiltersDo

	| url resp |

	url := self setUpMockedReportRoute.
	resp := self client davReport: url 
		namespaces: #() 
		properties: #() 
		queryType: 'c:calendar-query' 
		filters: #() 
		do:[ :req | req namespaces: #((cs 'https://www.caldavserver.com/ns')) ].
		
	self assert: 200 equals: resp code.
	self assert: #((cs 'https://www.caldavserver.com/ns')) equals: (resp request namespaces)