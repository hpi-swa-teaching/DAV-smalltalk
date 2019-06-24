tests - queries
testPutEventDataQueryWithPayloadIfMatch

	self query: (client putEventDataQueryWithPayload: 'testPayload' ifMatch: 'testEtag').
	
	self assert: 'PUT' equals: self query method.
	self assert: 'testPayload' equals: self query content.
	self assert: 'testEtag' equals: (self query headerAt: 'If-Match')