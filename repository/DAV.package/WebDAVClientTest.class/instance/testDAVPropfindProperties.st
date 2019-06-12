tests - methods
testDAVPropfindProperties

	| url  resp |

	url := self setUpMockedPropfindRoute.
	resp := self client davPropfind: url properties: self propfindTestQuery.
	self assert: 200 equals: resp code