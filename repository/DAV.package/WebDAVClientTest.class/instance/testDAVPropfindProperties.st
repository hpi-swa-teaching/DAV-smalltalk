tests - methods
testDAVPropfindProperties

	| url  resp |

	url := self setUpPropfindRoute.
	resp := self client davPropfind: url properties: self propfindTestQuery.
	self assert: 200 equals: resp code