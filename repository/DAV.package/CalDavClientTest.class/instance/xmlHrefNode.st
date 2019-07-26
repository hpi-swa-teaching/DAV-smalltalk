helpers - parsing
xmlHrefNode

	^ (XMLElement named: #'d:href') addContent: 'eventUrl' asText