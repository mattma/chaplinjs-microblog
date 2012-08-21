Model = require 'models/base/model'

module.exports = class Post extends Model
	defaults:
		title: "my awesome title"
		excerpt: "This is a short description of this awesome post. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type."
		content: "This is the main content area with some awesome contents. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
		comments:[
			{
				firstName: "John"
				lastName: "Doe"
				email: "email@gmail.com"
				comment: "This is a great post. I like it. Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
			}
		]
