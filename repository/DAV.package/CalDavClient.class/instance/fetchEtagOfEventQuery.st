queries
fetchEtagOfEventQuery
	
	^ DAVPropfindQuery
		namespaces: #()
		properties: #('d:getetag')