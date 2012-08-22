View = require 'views/base/view'
template = require 'views/templates/post'

module.exports = class PostView extends View
	'use strict'

	template: template
	template = null

	container: "#posts"
	tagName: "article"
	autoRender: true

	events:
		"click #removePost": "remove_post"

	remove_post: (event) ->
		@model.destroy()
