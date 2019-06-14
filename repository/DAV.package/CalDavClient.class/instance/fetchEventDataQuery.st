queries
fetchEventDataQuery

		
	^ DAVPropfindQuery
		namespaces: #()
		properties: #('d:getetag'  'd:getlastmodified' 'd:getcontentlength' 'd:getcontenttype')