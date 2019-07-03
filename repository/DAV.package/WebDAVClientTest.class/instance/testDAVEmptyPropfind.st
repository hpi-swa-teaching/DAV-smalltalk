tests - methods
testDAVEmptyPropfind

	| resp |

	self client initializeFromUrl: self setUpMockedPropfindRoute.

	self query: DAVPropfindQuery empty.
	self query initializeFromUrl: self setUpMockedPropfindRoute.
	resp := self client sendRequest: self query.
	self assert: 200 equals: resp code