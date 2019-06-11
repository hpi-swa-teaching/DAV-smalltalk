tests - methods
testDAVPropfindNamespacesProperties

	| url  resp |

	url := self setUpPropfindRoute.
	resp := self client davPropfind: url namespaces: #() properties: #().
	self assert: 200 equals: resp code