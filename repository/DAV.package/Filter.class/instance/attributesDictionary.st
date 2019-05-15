accessing
attributesDictionary

	| attributesDictionary |
	
 	attributesDictionary := Dictionary newFrom: 
		(self attributes collect:
		 	[:attribute | attribute first -> attribute second]).

	^ attributesDictionary