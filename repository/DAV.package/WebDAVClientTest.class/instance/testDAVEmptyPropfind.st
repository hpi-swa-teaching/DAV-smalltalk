tests - methods
testDAVEmptyPropfind

	| resp url |

	url := self setUpMockedPropfindRoute.

	query := DAVPropfindQuery empty.
	resp := self client davPropfind: url properties: query.
	self assert: 200 equals: resp code