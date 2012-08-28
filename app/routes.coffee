module.exports = (match) ->
	match ':id', 'posts#details'
	match '', 'posts#index'
	match '*anything', 'errors#notFound'
