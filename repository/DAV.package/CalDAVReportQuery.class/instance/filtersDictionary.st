accessing
filtersDictionary

	| filtersDictionary |
	
 	filtersDictionary := Dictionary newFrom: (self filters collect: [:filter | 'name' -> filter]).

	^ filtersDictionary