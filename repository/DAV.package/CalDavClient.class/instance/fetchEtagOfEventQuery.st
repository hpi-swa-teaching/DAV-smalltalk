queries
fetchEtagOfEventQuery
	"deprecated"

	^ DAVPropfindQuery
		namespaces: #()
		properties: #('D:getetag')