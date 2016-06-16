require 'sinatra'
require 'sinatra/asset_pipeline'
require 'sinatra/reloader'
require 'sinatra/base'
require 'sass'
require 'slim'

class App < Sinatra::Base

	set :root, File.dirname(__FILE__)
	set :public_folder, File.dirname(__FILE__) + '/public/'
	set :assets_prefix, %w(app/assets vendor/assets)

	register Sinatra::AssetPipeline
	
	configure :development do
		register Sinatra::Reloader
	end
	
	get '/' do
		@today = Date.today
		slim :index
	end
end