tests - methods
testDavPut

	| url resp |

	url := self setUpMockedStandardHttpRoute.
	resp := self client davPut: url data: '' do: [ :req | ].
	self assert: 200 equals: resp code