helpers
hasCorrectHeaders: aDAVQuery

	^	('return-minimal' = (aDAVQuery headerAt: 'Prefer')) and:
		('1' = (aDAVQuery headerAt: 'Depth')) and:
		('application/xml' = (aDAVQuery headerAt: 'Content-Type'))