helpers
isValidPropfindQuery: aDAVPropfindQuery

	^ (self isValidDAVQuery: aDAVPropfindQuery) and:
		(aDAVPropfindQuery method = 'PROPFIND') and:
			(aDAVPropfindQuery content isEmpty or:
				(aDAVPropfindQuery content matchesRegex:
					'(.|\s)*<d\:propfind .*xmlns\:d="DAV\:">(.|\s)*'))