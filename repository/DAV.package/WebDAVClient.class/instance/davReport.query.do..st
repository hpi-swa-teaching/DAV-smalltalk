deprecated
davReport: anUrl query: query do: aBlock
	"deprecated"

	^ self sendDavRequest: anUrl method: 'REPORT' query: query do: aBlock