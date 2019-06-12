tests - methods
testDAVPropfindNamespacesPropertiesDo

	| url resp |

	url := self setUpPropfindRoute.
	resp := self client davPropfind: url namespaces: #() properties: #() do:
		[ :req| req namespaces: #((cs 'https://www.caldavserver.com/ns')) ].
	self assert: 200 equals: resp code.
	self assert: #((cs 'https://www.caldavserver.com/ns')) equals: (resp request namespaces)