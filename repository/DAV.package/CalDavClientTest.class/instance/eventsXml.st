helpers
eventsXml
	
	^	 '<?xml version="1.0" encoding="utf-8"?>',
			'<d:multistatus xmlns:d="DAV:">',
				'<d:response>',
					'<d:href>',
						'eventUrl',
					'</d:href>',
					'<d:propstat>',
						'<d:status>HTTP/1.1 200 OK</d:status>',
						     '<d:prop>',
								'<d:getetag>"eTag"</d:getetag>',
							'</d:prop>',
						'</d:propstat>',
					'</d:response>',
				'</d:multistatus>'