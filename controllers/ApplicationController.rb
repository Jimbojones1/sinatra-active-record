class  ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require


  # this starts session
  enable :sessions
  #adapter is the type of sql where using
  #database is the name of your database
  # in our case check the migrations.sql file for the name
  ActiveRecord::Base.establish_connection(
      :adapter => 'postgresql',
      :database => 'fun_friday'
    )


  # require/(Setting) views, public_dir, db
  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  not_found do
    erb :not_found
  end


end
