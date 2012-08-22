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

	initialize: ->
		@router = new Router()

	events:
		"click #removePost": "remove_post"
		"click #comment_submit": "update_comment"

	render: ->
		super

	remove_post: (event) ->
		@model.destroy
			success: (model, response) => @router.route '/' if response.ok

	update_comment: (event) ->
		event.preventDefault()
		formData = $('#comment').formParams()
		@model.save comments: formData,
			success: (model, response) =>
				if response.ok
					@model.fetch
						success: (model, response) => @render()

