angular = require 'angular'

app = require('angular').module('redditr', [
  require 'angular-ui-router'
  require 'angular-sanitize'
])

app.config require './routes'

require './main'
require './about'
require './subs'
require './topnav'
