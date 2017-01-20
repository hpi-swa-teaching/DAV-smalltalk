as yet unclassified
sendRequest: aRequest

	^ [super sendRequest: aRequest] on: WebAuthRequired do: [:ex |
		ex username: '' password: '' ]