CollectionView = require 'views/base/collection_view'
template = require 'views/templates/posts'
MainView = require 'views/main_view'

module.exports = class PostsView extends CollectionView
	template: template
	template = null

	itemView: MainView

	$list: $("#post")

	render: ->
		@

	getView: (model) ->
		super
