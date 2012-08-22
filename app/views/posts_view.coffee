CollectionView = require 'views/base/collection_view'
template = require 'views/templates/posts'
MainView = require 'views/main_view'

module.exports = class PostsView extends CollectionView
	'use strict'

	template: template
	template = null

	$list: $("#post")

	render: -> @

	getView: (model) -> new MainView model: model
