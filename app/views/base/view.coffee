Chaplin = require 'chaplin'
require 'lib/view_helper' # Just load the view helpers, no return value
require 'lib/plugins/backbone.modelBinder-0.1.5'

module.exports = class View extends Chaplin.View
	# Precompiled templates function initializer.
	getTemplateFunction: ->
		@template

	# enable the Model binding with this view
	# initialize: ->
	# 	@_modelBinder = new Backbone.ModelBinder()
