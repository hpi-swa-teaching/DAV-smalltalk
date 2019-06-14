queryBuilding
createFilterXmlOn: aXMLWriter

	| lastFilter |		
	
	self filters ifNotEmpty: [ 
			lastFilter := filters last.
			self filters removeLast.
			
			aXMLWriter
				startTag: 'c:filter';
				endTag.
			
			self filters do: [:filter |  filter printStartTagOn: aXMLWriter ].
			lastFilter printWithEmpyLastTagOn: aXMLWriter.
			self filters reverseDo: [:filter | filter printLastTagOn: aXMLWriter].
			
			aXMLWriter
				endTag: 'c:filter'.
				
			self filters add: lastFilter]