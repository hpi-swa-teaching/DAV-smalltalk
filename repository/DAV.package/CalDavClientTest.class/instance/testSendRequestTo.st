tests - requests
testSendRequestTo

	| url resp |

	url := self setUpClientForMockedServer.
	resp := self client sendRequest: self query to: url.
	self assert: 200 equals: resp code