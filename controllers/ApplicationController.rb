class  ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require


  # require/(Setting) views, public_dir, db
  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  not_found do
    erb :not_found
  end


end
