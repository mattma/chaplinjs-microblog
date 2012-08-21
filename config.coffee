exports.config =
	# See http://brunch.readthedocs.org/en/latest/config.html for documentation.
	paths:
		assets: 'vendor/assets'

	files:
		javascripts:
			# Will be included in /public/scripts folder
			joinTo:
				'scripts/app.js': /^app/
				'scripts/vendor.js': /^vendor/
				'test/scripts/test.js': /^test(\/|\\)(?!vendor)/
				'test/scripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
			order:
				# Files in `vendor` directories are compiled before other files
				# even if they aren't specified in order.before.
				# chaplin will always be loaded the last
				before: [
					'vendor/scripts/json2.js',
					'vendor/scripts/jquery-1.8.0.js',
					'vendor/scripts/lodash-0.4.2.js',
					'vendor/scripts/backbone-0.9.2.js'
				]

		stylesheets:
			# Will be included in /public/styles folder
			joinTo:
				'styles/app.css': /^(app|vendor)/
				'test/styles/test.css': /^test/
			order:
				before: [
					'vendor/styles/reset.css'
					#'vendor/styles/sass/base.sass'
				]
				#after: ['vendor/styles/application.css']

		templates:
			# Will be included in /public/scripts folder
			# All scripts from the /app folder
			joinTo: 'scripts/app.js'

	# modules:
	# 	wrapper: 'amd'
	# 	definition: false

	server:
		path: 'server.coffee'
		port: 3000
		base: ''
		run: no
