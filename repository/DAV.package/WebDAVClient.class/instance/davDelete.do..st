deprecated
davDelete: anUrl do: aBlock
	"deprecated"

	^ self sendDavRequest: anUrl method: 'DELETE' query: '' do: aBlock