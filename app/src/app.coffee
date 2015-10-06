angular = require 'angular'

app = require('angular').module('redditr', [
  require 'angular-ui-router'
  require 'angular-sanitize'
])

app.config require './routes'

require './topnav'
require './sidenav'
require './main'
require './about'
require './subs'
require './sub'
require './topic'
