as yet unclassified
davPropfind: urlString query: query

	| request |
	self initializeFromUrl: urlString.
	request := self requestWithUrl: urlString.
	request method: 'PROPFIND'.
	request headerAt: 'Content-Type' put: 'application/xml'.
	request headerAt: 'Prefer' put: 'return-minimal'.
	request headerAt: 'Depth' put: '0'.
	^self sendRequest: request content: query readStream size: query size
