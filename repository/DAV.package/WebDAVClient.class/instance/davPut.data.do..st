deprecated
davPut: anUrl data: payload do: aBlock
	"deprecated"
	^ self sendDavRequest: anUrl method: 'PUT' query: payload do: aBlock