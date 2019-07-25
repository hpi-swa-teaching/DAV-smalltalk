helpers
serverDataWithOffset: anOffset

	^ (ICEvent new
		stamp: DateAndTime now + anOffset;
		created: DateAndTime now + anOffset;
		start: DateAndTime now + anOffset;
		end: DateAndTime now + anOffset + 15 minutes;
		summary: anOffset asString).