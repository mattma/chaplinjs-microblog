CollectionView = require 'views/base/collection_view'
template = require 'views/templates/posts'

module.exports = class PostsView extends CollectionView
	template: template
	template = null

	tagName: "article"

	container: "#main"

	autoRender: true
