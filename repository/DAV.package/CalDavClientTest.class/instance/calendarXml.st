helpers
calendarXml

	^	'<?xml version="1.0"?>',
		'<d:multistatus xmlns:d="DAV:" ',
				'xmlns:s="http://sabredav.org/ns" ',
				'xmlns:cal="urn:ietf:params:xml:ns:caldav" ',
				'xmlns:cs="http://calendarserver.org/ns/">',
			'<d:response>',
				'<d:href> calendarUrl </d:href>',
				'<d:propstat>',
					'<d:prop>',
						'<cs:getctag>cTag</cs:getctag>', 						'<d:displayname>calendarName</d:displayname>',
						'<d:sync-token>syncToken</d:sync-token>',
					'</d:prop>',
					'<d:status>HTTP/1.1 200 OK</d:status>',
				'</d:propstat>
			</d:response>',
		'</d:multistatus>'