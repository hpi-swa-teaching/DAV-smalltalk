deprecated
davGet: anUrl query: query do: aBlock
	"deprecated"

	^ self sendDavRequest: anUrl method: 'GET' query: query do: aBlock