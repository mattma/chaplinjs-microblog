View = require 'views/base/view'
template = require 'views/templates/posts'

module.exports = class MainView extends View
	template: template
	container: "#posts"
	tagName: "article"
	autoRender: true
