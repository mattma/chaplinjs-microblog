# GET home page.
exports.home = (req, res) ->
	res.render 'app/index' #, { title: 'Express' } # index: views/index.jade

# GET creat a new post page.
exports.newPost = (req, res) ->
	res.render 'app/new'
