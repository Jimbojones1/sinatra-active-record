class HomeController < ApplicationController


get '/' do
  p '-----------------------'
  puts session
  session["username"] = "frank"
  p '-----------------------'
  p session
  erb :home
end

# route that responds with a json hash
post '/user' do

  p '-------------'
  puts params
# This is the name of our Model class
## from a form or ajax or postman...
  @user = User.new
  @user.username = params[:username]
  @user.password = params[:password]

  @user.save

  @user.to_json

end

get '/user' do
  # this route finds all the users and returns them as json
  # finds all the users and sends them json
  @user = User.all
  @user.to_json

end


# create a view called user.erb
get '/userView' do
  erb :user
end
# you are going to make an ajax call to retrieve all the users
# and list them on the page


# create a new view called login, which has form
get '/login' do
  erb :login
end
# the sends a post to create a new user
# extra credit fake the form and make an ajax post






# spring stuff spring erb
# you are going to use the erb method
# for injecting an object into your view








# then in your client side javascript
# make an ajax call to that route
# render that information on the homepage


end
