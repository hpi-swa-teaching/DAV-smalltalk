tests - methods
testDAVReportNamespacesPropertiesQueryTypeFilters

	| url resp |

	url := self setUpReportRoute.

	resp := self client davReport: url namespaces: #() properties: #() queryType: 		'c:calendar-query' filters: #().
	self assert: 200 equals: resp code