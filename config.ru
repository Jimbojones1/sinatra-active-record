require 'sinatra/base'

# require controllers
require './controllers/ApplicationController'
require './controllers/HomeController'


# require models

#bundle exec rackup

# map our controllers similiar node app.use('/users', UsersController)
# whatever we run is the name of the class in the file
map('/') {run ApplicationController}
map('/home') {run HomeController}
