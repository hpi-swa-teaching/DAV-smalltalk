helpers
eventsICalData
	
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
									'<d:getlastmodified>',
										'Sun, 09 Jun 2019 10:14:57 GMT',
									'</d:getlastmodified>',
      							 '<d:getcontenttype>text/calendar</d:getcontenttype>',
							'</d:prop>',
						'</d:propstat>',
					'</d:response>',
				'</d:multistatus>'