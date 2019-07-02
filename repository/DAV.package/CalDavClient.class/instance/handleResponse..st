requests
handleResponse: aResponse

	 aResponse isSuccess
			ifFalse: [Warning signal: 'Bad Web-Response with code ', aResponse code asString].
	
	^ aResponse