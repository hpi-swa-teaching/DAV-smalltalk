tests - methods
testDavDelete

	| url resp |

	url := self setUpMockedStandardHttpRoute.
	resp := self client davDelete: url do: [ :req | ].
	self assert: 200 equals: resp code