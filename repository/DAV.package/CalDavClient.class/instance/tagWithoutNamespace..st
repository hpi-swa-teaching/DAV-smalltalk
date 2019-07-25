parsing - helpers
tagWithoutNamespace: aString

	^ (aString subStrings: ':') last asSymbol