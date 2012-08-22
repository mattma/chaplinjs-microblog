Collection = require 'models/base/collection'
Post = require 'models/post'

module.exports = class Posts extends Collection
	model: Post
	url: '/'

	initialize: ->
		@add new Post {title: "first post 1", id: 1}
		@add new Post {title: "second post 2", id: 2}
		@add new Post {title: "third post 3", id: 3}
		#console.log @toJSON()






