deprecated
davPropfind: anUrl properties: propfindQuery do: aBlock
	"deprecated"
	
	^ self 
		sendDavRequest: anUrl 
		method: propfindQuery method
		query: propfindQuery createXmlBody 
		do: aBlock