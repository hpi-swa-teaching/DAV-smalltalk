authorization
getTokens: authorizationData

	| basePostBody postBody result |
	basePostBody := Dictionary newFrom: {
		#client_id -> self clientId.
		#code -> (authorizationData at: #device_code).
		#grant_type -> 'http://oauth.net/grant_type/device/1.0'.
		#client_secret -> self clientKey.
	}.
		
	postBody := WebUtils encodeUrlEncodedForm: basePostBody.
	result := WebClient httpPost: 'https://www.googleapis.com/oauth2/v4/token' 
				content: postBody 
				type: 'application/x-www-form-urlencoded'.
	result := WebUtils jsonMapFrom: (ReadStream on: result content).
		
	(result includesKey: #error) ifTrue: [self halt].
	
	^ result