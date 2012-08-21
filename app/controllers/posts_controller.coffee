Controller = require 'controllers/base/controller'
Posts = require 'models/posts'
PostView = require 'views/post_view'
PostsView = require 'views/posts_view'

module.exports = class PostsController extends Controller
	title: "Matt Ma Mirco blog"

	index: (params)->
		@collection = new Posts()
		@posts = new PostsView collection: @collection
		#@posts = new PostsView collection: @post
