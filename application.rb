require 'sinatra'
require 'sinatra/asset_pipeline'
require 'sinatra/reloader'
require 'sinatra/base'
require 'sass'
require 'slim'

require_relative 'helpers/shape_helper'

class App < Sinatra::Base

	set :root, File.dirname(__FILE__)
	set :public_folder, File.dirname(__FILE__) + '/public/'
	set :assets_prefix, %w(app/assets vendor/assets)

	set :assets_precompile, %w(application.css *.png *.jpg *.svg *.eot *.ttf *.woff)

	set :assets_css_compressor, :sass

	helpers ShapeHelper

	register Sinatra::AssetPipeline
	
	configure :development do
		register Sinatra::Reloader
	end
	
	get '/' do
		@today = Date.today
		slim :index
	end
end