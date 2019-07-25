tests - handling events
testAddEvent

	| event key |

	event := self calendar newEvent.
	key := event url schemeSpecificPart asSymbol.
	self calendar addEvent: event.
	
	self assert: (self calendar eventsDictionary keys includes: key)