tests - requests
testSendRequestTo

	| resp |

	self setUpClientForMockedServer.
	resp := self client sendRequest: self query to: self defaultRouteOnMockedServer.
	self assert: 200 equals: resp code