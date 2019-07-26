accessing
doesNotUnderstand: aMessage

	"passes messages to wrapped ICEvent"
	
	(self serverData respondsTo: aMessage selector) ifFalse: 
			[self serverData ifNil: [^ 'uninitialized event'].
			 super doesNotUnderstand: aMessage].
	
	^ aMessage sendTo: self serverData 