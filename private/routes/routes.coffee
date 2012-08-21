# GET home page.
exports.home = (req, res) ->
	res.render 'app/index' #, { title: 'Express' } # index: views/index.jade
