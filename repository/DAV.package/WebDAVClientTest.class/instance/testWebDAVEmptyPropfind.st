tests - methods
testWebDAVEmptyPropfind

	| client resp url |

	url := self localHostUrl, '/propfind'.
	server addService: '/propfind' action:[:req | 
		req send200Response: req method.
	] methods: {'PROPFIND'}.

	query := DAVEmptyPropfindQuery new.
	
	self assert: 'PROPFIND' equals: query method.
	
	client := WebDAVClient new.
	resp := client davPropfind: url properties: query.
	self assert: resp code = 200.