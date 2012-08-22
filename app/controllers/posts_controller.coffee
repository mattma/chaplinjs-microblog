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
		@model = new Post {id: model_id}
		#@model.fetch
			# success: (model, response)->
			# 	response
			# 	console.log model
		#console.log @model
		#@post = new PostView
