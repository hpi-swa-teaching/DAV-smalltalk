tests - methods
testWebDAVPropfind

	| client resp |

	server addService: '/propfind' action:[:req | 
		req send200Response: req method.
	] methods: {'PROPFIND'}.

	query := DAVPropFindQuery
		namespaces: #((cs 'https://www.caldavserver.com/ns'))
		properties: #('D:displayname').
	client := WebDAVClient new.
	resp := client davPropfind: self localHostUrl, '/propfind'  properties: query.
	self assert: resp code = 200.