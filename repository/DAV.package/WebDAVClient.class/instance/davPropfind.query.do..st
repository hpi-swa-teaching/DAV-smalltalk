as yet unclassified
davPropfind: anUrl query: query do: aBlock

	| request |
	self initializeFromUrl: anUrl asString.
	request := self requestWithUrl: anUrl asString.
	request method: 'PROPFIND'.
	request headerAt: 'Content-Type' put: 'application/xml'.
	userAgent ifNotNil:[request headerAt: 'User-Agent' put: userAgent].
	aBlock value: request.
	^self sendRequest: request content: query readStream size: query size
