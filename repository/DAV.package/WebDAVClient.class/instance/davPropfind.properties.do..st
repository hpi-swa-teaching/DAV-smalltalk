as yet unclassified
davPropfind: anUrl properties: propfindQuery do: aBlock
	
	^ self 
		sendDavRequest: anUrl 
		method: 'PROPFIND' 
		query: propfindQuery createXmlBody 
		do: aBlock