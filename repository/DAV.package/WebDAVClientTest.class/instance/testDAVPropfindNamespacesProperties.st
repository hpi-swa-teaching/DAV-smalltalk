tests - methods
testDAVPropfindNamespacesProperties

	| url  resp |

	url := self setUpMockedPropfindRoute.
	resp := self client davPropfind: url 
			namespaces: #() 
			properties: #().
			
	self assert: 200 equals: resp code