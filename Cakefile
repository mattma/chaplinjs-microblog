# Custom Cakefile handcrafted by [Matt Ma](http://mattmadesign.com)

fs            = require 'fs'
{spawn, exec} = require 'child_process'
{print} = require 'util'
util = require 'util'

# ANSI Terminal Colors
bold  = '\x1B[0;1m'
red   = '\x1B[0;31m'
green = '\x1B[0;32m'
reset = '\x1B[0m'

option '-n', '--folder [FILE_NAME]', "generate docs from /app/_subfolder"

# By default, `cake docs` will generate docs from /app/*.coffee files
# `cake -n controllers docs`  will generate docs from /app/controllers/*.coffee files

task 'docs', 'Generate annotated source code with Docco', (options) ->
	path = "#{options.folder}"   # path equal to the custom paramter which user insert in

	if path isnt "undefined"
		fs.readdir "app/#{path}", (err, contents) ->
			files = ("app/#{path}/#{file}" for file in contents when /\.coffee$/.test file)
			docco = spawn 'docco', files
			docco.stdout.on 'data', (data) -> print data.toString()
			docco.stderr.on 'data', (data) -> console.log data.toString(), red
			docco.on 'exit', (status) -> callback?() if status is 0
	else
		fs.readdir "app", (err, contents) ->
			files = ("app/#{file}" for file in contents when /\.coffee$/.test file)
			docco = spawn 'docco', files
			docco.stdout.on 'data', (data) -> print data.toString()
			docco.stderr.on 'data', (data) -> console.log data.toString(), red
			docco.on 'exit', (status) -> callback?() if status is 0
