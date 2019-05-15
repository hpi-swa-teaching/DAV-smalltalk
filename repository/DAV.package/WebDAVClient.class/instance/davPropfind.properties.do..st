as yet unclassified
davPropfind: anUrl properties: propfindQuery do: aBlock
	
	^ self 
		sendDavRequest: anUrl 
		method: propfindQuery method
		query: propfindQuery createXmlBody 
		do: aBlock