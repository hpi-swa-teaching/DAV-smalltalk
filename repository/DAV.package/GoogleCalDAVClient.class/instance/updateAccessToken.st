authorization
updateAccessToken
	"https://developers.google.com/identity/protocols/OAuth2ForDevices#refreshtoken"

	| basePostBody postBody result |
	basePostBody := Dictionary newFrom: {
		#client_id -> self clientId.
		#client_secret -> self clientKey.
		#refresh_token -> self refreshToken.
		#grant_type -> 'refresh_token' }.
		
	postBody := WebUtils encodeUrlEncodedForm: basePostBody.
	result := WebClient httpPost: 'https://www.googleapis.com/oauth2/v4/token' 
				content: postBody 
				type: 'application/x-www-form-urlencoded'.
	result := WebUtils jsonMapFrom: (ReadStream on: result content).

	(result includesKey: #error) ifTrue: [self halt].
	self accessToken: (result at: #access_token).