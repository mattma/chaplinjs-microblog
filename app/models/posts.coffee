Collection = require 'models/base/collection'
Post = require 'models/post'
_ = require 'underscore'

module.exports = class Posts extends Collection
	model: Post
	url: '/posts'

	initialize: ->

		super
		@initSyncMachine()
		@fetch
			success: @fetchSuccess
			error: @fetchError

	parse: (response, xhr) ->
		_.map response, (obj) -> obj.value

	fetchSuccess: (collection, response) =>

		# Switch to syncing state
		@beginSync()
		collection


	fetchError: (collection, response) ->
		throw new Error "Collection Fetch Failed!"

	getAllPosts: (response) ->
		#console.debug 'Likes#processLikes', response, response.data
		return if @disposed

		# Update the collection
		@reset(if response and response.data then response.data else [])

		# Switch to synced state
		@finishSync()





