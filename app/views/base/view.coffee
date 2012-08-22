Chaplin = require 'chaplin'
require 'lib/view_helper' # Just load the view helpers, no return value
require 'backbone-ModelBinder'

module.exports = class View extends Chaplin.View
	# Precompiled templates function initializer.
	getTemplateFunction: ->
		@template

	# enable the Model binding with this view
	# initialize: ->
	# 	@_modelBinder = new Backbone.ModelBinder()
