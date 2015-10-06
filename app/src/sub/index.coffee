app = require('angular').module 'redditr'

app.controller 'SubCtrl', require './sub_controller'
app.service 'TopicsService', require './topics_service'
