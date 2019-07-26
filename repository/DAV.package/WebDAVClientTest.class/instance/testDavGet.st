tests - methods
testDavGet

	| url resp |

	url := self setUpMockedStandardHttpRoute.
	resp := self client davGet: url data: '' do: [ :req | ].
	self assert: 200 equals: resp code