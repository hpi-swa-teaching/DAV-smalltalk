deprecated
fetchEtagOfEventQuery
	"deprecated"

	^ DAVPropFindQuery
		namespaces: #()
		properties: #('D:getetag')