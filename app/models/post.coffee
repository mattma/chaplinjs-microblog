Model = require 'models/base/model'

module.exports = class Post extends Model

	idAttribute: "_id"
	urlRoot: "/post"

	# parse: (response, xhr) ->
	# 	_.map response, (obj) -> obj.value



	# fetch: ->
	# 	success: @fetchSuccess
	# 	error: @fetchError

	# fetchSuccess: (model, response) =>
	# 	console.log "success"
	# 	# Switch to syncing state
	# 	@beginSync()
	# 	model

	# fetchError: (model, response) ->
	# 	throw new Error "model id: #{model} Fetch Failed!"
