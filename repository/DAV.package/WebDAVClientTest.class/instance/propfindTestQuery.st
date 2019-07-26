helpers
propfindTestQuery

	^ DAVPropfindQuery 
			url: (self localHostUrl, '/propfind') 
			namespaces: #((cs 'https://www.caldavserver.com/ns')) 
			properties: #('d:displayname')