Chaplin = require 'chaplin'
_ = require "underscore"
require 'lib/plugins/backbone.validation-0.6.2'

module.exports = class Model extends Chaplin.Model
	initialize: ->
		_.extend(Backbone.Model.prototype, Backbone.Validation.mixin)
