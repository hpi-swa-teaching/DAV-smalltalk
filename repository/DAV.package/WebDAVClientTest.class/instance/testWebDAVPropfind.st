tests - methods
testWebDAVPropfind

	| client resp url |

	url := self localHostUrl, '/propfind'.
	server addService: '/propfind' action:[:req | 
		req send200Response: req method.
	] methods: {'PROPFIND'}.

	query := DAVPropFindQuery
		url: url
		namespaces: #((cs 'https://www.caldavserver.com/ns'))
		properties: #('D:displayname').
	client := WebDAVClient new.
	resp := client davPropfind: url properties: query.
	self assert: resp code = 200.