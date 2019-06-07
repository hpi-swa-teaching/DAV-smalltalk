tests
testFetchEtagsOfEvents

	"WIP needs credentials to pass"

	| response |

	response := client fetchEtagsOfEvents: 'https://owncloud.hpi.de/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/'.
	self assert: response equals: CalDavTest reportEtagsResponse.
	