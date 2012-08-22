Controller = require 'controllers/base/controller'
Posts = require 'models/posts'
Post = require 'models/post'
PostView = require 'views/post_view'
PostsView = require 'views/posts_view'

module.exports = class PostsController extends Controller
	title: "Matt Ma Mirco blog"

	index: (params)->
		@collection = new Posts()
		@posts = new PostsView collection: @collection

	details: (params)->
		model_id = params.id
		post = new Post {_id: model_id}

		post.fetch
			success: (model, response) ->
				@post = new PostView {model: model}
