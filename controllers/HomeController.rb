class HomeController < ApplicationController


get '/' do

  erb :home
end

# route that responds with a json hash
get '/bird' do

  @bird = {
    name: 'Andrew',
    instrument: 'violin, whistle, guitar'
  }.to_json

end

# spring stuff spring erb
# you are going to use the erb method
# for injecting an object into your view








# then in your client side javascript
# make an ajax call to that route
# render that information on the homepage


end
