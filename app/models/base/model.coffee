Chaplin = require 'chaplin'
_ = require "underscore"
require 'backbone-validation'

module.exports = class Model extends Chaplin.Model
	initialize: ->
		_.extend(Backbone.Model.prototype, Backbone.Validation.mixin)
