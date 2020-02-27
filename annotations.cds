annotate CatalogService.Books with @(

	UI: {
		SelectionFields: [ ID ],
        LineItem: [
			{ Value: title, Label: 'Book Title' },
			{ Value: stock, Label: 'Book Stock' },
			{ Value: author.name, Label: 'Author' }
		]
	}

);