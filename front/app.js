let app = new Vue ({
	el: '#app',
	data: {
		title  : null,
		author : null,
		cover  : null,
		price  : null,
		code   : "",
		description : null,
		url    : 'https://www.googleapis.com/books/v1/volumes?q=',
		word   : null
		
	},
	methods: {
		getInfo: () => {
			axios.get(app.url + app.word)
			.then( (res) => {
				app.title = res.data.items[0].volumeInfo.title
				app.author = res.data.items[0].volumeInfo.authors[0]
				app.description = res.data.items[0].volumeInfo.description
				app.cover = res.data.items[0].volumeInfo.imageLinks.smallThumbnail
				if (res.data.items[0].saleInfo.saleability == "FOR_SALE") {
					app.price = res.data.items[0].saleInfo.retailPrice.amount
					app.code = res.data.items[0].saleInfo.retailPrice.currencyCode
				} else {
					app.price = "未掲載"
					app.code = ""
				}
			})
		}
	}

})
