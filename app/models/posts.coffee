Collection = require 'models/base/collection'
Post = require 'models/post'

module.exports = class Posts extends Collection
	model: Post

	initialize: ->
		super
		@fetch()

	fetch: ->
		@add new Post {title: "first post 1"}
		@add new Post {title: "second post 2"}
		@add new Post {title: "third post 3"}
