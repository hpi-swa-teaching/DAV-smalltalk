tests - handling events
testRemoveEvent

	| event key |

	event := self calendar newEvent.
	key := event url schemeSpecificPart asSymbol.
	self calendar addEvent: event.
	self calendar removeEventLocal: event.
	
	self assert: ((self calendar eventsDictionary keys includes: key) not)