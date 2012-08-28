Controller = require 'controllers/base/controller'

module.exports = class ErrorsController extends Controller
	title: "Page has an error"

	notFound: ->
		console.log "page cannot be found"
