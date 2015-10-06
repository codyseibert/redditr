app = require('angular').module 'redditr'

app.service 'SubsService', require './subs_service'
app.controller 'SubsCtrl', require './subs_controller'
