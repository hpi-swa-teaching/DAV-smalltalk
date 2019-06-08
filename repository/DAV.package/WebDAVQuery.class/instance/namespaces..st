accessing
namespaces: anArray

	namespaces := anArray collect: [:propertyArray | (propertyArray collect:
		[ :property | property asLowercase ]) asArray]