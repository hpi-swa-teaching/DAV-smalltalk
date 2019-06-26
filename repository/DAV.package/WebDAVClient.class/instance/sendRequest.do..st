sending
sendRequest: aDAVQuery do: aBlock

	aBlock value: aDAVQuery.

	^ self
		sendRequest: aDAVQuery content: aDAVQuery content readStream size: aDAVQuery size