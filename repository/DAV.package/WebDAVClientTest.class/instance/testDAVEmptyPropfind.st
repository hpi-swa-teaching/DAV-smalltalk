tests - methods
testDAVEmptyPropfind

	| resp url |

	url := self setUpPropfindRoute.

	query := DAVPropfindQuery empty.
	resp := self client davPropfind: url properties: query.
	self assert: 200 equals: resp code