# Brunch with Chaplin and Node (based on [Brunch with Chaplin](https://github.com/paulmillr/brunch-with-chaplin))

Huge Thanks to [Paul Miller](https://github.com/paulmillr) for making the project -- [Brunch](http://brunch.io/)

Brunch with Chaplin is a skeleton (boilerplate) for [Brunch](http://brunch.io)
based on [Chaplin](https://github.com/chaplinjs/chaplin) framework,
[Brunch with Chaplin](https://github.com/paulmillr/brunch-with-chaplin) is the default application skeleton for Brunch, so you don't need to specify `--skeleton` option for the command.

Requires Brunch 1.4+.

## Getting started
* Create new project via executing

`brunch new <project name> -s https://github.com/mattma/Brunch-with-Chaplin-and-Node.git`.

* Build the project with `brunch b` or `brunch w`.
* Open the `public/` dir to see the result.
* Write your code.

Example application built with the skeleton:
[Ost.io](https://github.com/paulmillr/ostio).


## Difference from [Chaplin Boilerplate](https://github.com/chaplinjs/chaplin-boilerplate)

[Chaplin Boilerplate](https://github.com/chaplinjs/chaplin-boilerplate)
is a official boilerplate all for chaplin. This skeleton is almost the same,
except a few changes:

* Added Header.
* Added authentication abstractions (`SessionController`, `LoginView` etc).
* CommonJS is used instead of AMD, because it's easier to use & debug.

## Difference from [Brunch with Chaplin](https://github.com/paulmillr/brunch-with-chaplin)

* Updated to jQuery 1.8.0
* added [json2.js](https://github.com/douglascrockford/JSON-js/blob/master/json2.js) to take care JSON object
* Added [lodash-0.4.2.js](http://lodash.com) instead of underscore 1.3.3
* Removed console-helper.js from original repo
* HTML5Boilerplate 3.0.3 html & css are included.
* CoffeeScript + Sass + Jade + Handlebars as app languages
* NoSQL CouchDB supports out of the box
* Add `cake docs` function to generate documentations
* Cross-module communication using the Mediator and Publish/Subscribe patterns
* Controllers for managing individual UI views
* Rails-style routes which map URLs to controller actions
* An application view as dispatcher and view manager
* Extended model, view and collection classes to avoid repetition and
enforce conventions
* Strict memory management and object disposal
* A collection with additional manipulation methods for smarter change events
* A collection view for easy and intelligent list rendering
* Client-side authentication using service providers like Facebook, Google
and Twitter


## License
The MIT license.

Copyright (c) 2012 Matt Ma (http://mattmadesign.com/)

Copyright (c) 2012 Paul Miller (http://paulmillr.com/)

Copyright (c) 2012 Moviepilot GmbH, 9elements GmbH et al.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
