helpers
serverDataWithDelay: aDelay

	^ (ICEvent new
		stamp: DateAndTime now + aDelay;
		created: DateAndTime now + aDelay;
		start: DateAndTime now + aDelay;
		end: DateAndTime now + aDelay + 15 minutes;
		summary: aDelay asString)