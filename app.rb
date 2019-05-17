#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, "sqlite3:pizzashop.db"

class  Product < ActiveRecord::Base

end

# before do
# 	@product = Product.all
# end

get '/' do

# make  with order
#	  @product = Product.order 'created_at DESC'
	@products = Product.all

	erb :index
end

get '/about' do
	erb :about
end



get '/product/:id' do
 @product = Product.find(params[:id])
 erb :product
end

