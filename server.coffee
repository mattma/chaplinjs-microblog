# require('coffee-script')
express = require 'express'
routes = require './private/routes/routes'
cradle = require 'cradle'
db_access = require './private/db/auth'
config = require './config'

app = module.exports = express()

VIEWS_PATH = __dirname + '/private/views'
PUBLIC_PATH = __dirname + '/public'
PORT = config.config.server.port or process.env.VMC_APP_PORT or 3000

# Configuration
app.configure( ->
	app.set 'views', 		VIEWS_PATH
	app.set 'view engine', 'jade'
	app.set 'view options', { layout: false }  # Option: pretty: true
	app.use express.bodyParser()
	app.use express.methodOverride()
	app.use app.router
	app.use express.static( PUBLIC_PATH )
)

app.configure 'development', ->
	app.use express.errorHandler { dumpExceptions: true, showStack: true }

app.configure 'production', ->
	app.use express.errorHandler()

# Setup the CouchDB connection
conn = new (cradle.Connection)(
	cache: true
	raw: false
	host: "http://127.0.0.1"
	port: 5984
	auth:
		username: db_access.auth.username
		password: db_access.auth.password
)

db = conn.database db_access.auth.name

db.exists( (err, exists) ->
	if ( err )
		throw new Error "an error in DB"
	else if ( exists )
		console.log "database has exists"
	else
		db.create()
		console.log "create a new database"
)

# Routes
app.get '/', routes.home  #routes.home: /routes/routes.js => exports.home()

app.startServer =  ->
	app.listen PORT, ->
		console.log "Express server listening on port %d in %s mode", PORT, app.settings.env

