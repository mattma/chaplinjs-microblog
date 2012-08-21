View = require 'views/base/view'
template = require 'views/templates/post'

module.exports = class PostView extends View
	template: template
	container: "#main"
	tagName: "article"
	autoRender: true
