deprecated
sendDavRequest: anUrl query: query do: aBlock

	"deprecated"
	| request |
	self initializeFromUrl: anUrl asString.
	request := self requestWithUrl: anUrl asString.
	request method: query method.
	request headerAt: 'Content-Type' put: 'application/xml'.
	request headerAt: 'Content-Length' put: query size.
	userAgent ifNotNil:[request headerAt: 'User-Agent' put: userAgent].
	aBlock value: request.
	^self sendRequest: request content: query content readStream size: query size
