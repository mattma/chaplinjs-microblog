View = require 'views/base/view'
template = require 'views/templates/post'
Router = require 'chaplin/lib/router'

module.exports = class PostView extends View
	'use strict'

	template: template
	template = null

	container: "#posts"
	tagName: "article"
	autoRender: true

	events:
		"click #removePost": "remove_post"
		"click #comment_submit": "update_comment"

	remove_post: (event) ->
		@router = new Router()
		@model.destroy
			success: (model, response) => @router.route '/' if response.ok

	update_comment: (event) ->
		event.preventDefault()
		console.log @model.toJSON()
		#@model.save()
