queryBuilding
createFilterXmlOn: aXMLWriter

	| lastFilter |		
	
	self filters isNil
		ifFalse: [ 
			lastFilter := filters last.
			self filters removeLast.
			
			aXMLWriter
				startTag: 'C:filter';
				endTag.
			
			self filters do: [:filter |  filter printStartTagOn: aXMLWriter ].
			lastFilter printWithEmpyLastTagOn: aXMLWriter.
			self filters reverseDo: [:filter | filter printLastTagOn: aXMLWriter].
			
			aXMLWriter
				endTag: 'C:filter'.
				
			self filters add: lastFilter]
				
			
	