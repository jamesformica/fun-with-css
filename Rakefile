require "sinatra/activerecord/rake"
require 'sinatra/asset_pipeline/task'
require './application'

Sinatra::AssetPipeline::Task.define! App

namespace :db do
  task :load_config do
    require "./application"
  end
end