accessing
namespacesDictionary

	| namespacesDictionary |
	
 	namespacesDictionary := Dictionary newFrom: (self namespaces collect: [:pair | 
		('xmlns:' , pair first) -> pair second]).
	namespacesDictionary at: #xmlns:d put: #'DAV:'.

	^ namespacesDictionary