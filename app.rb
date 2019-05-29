#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, "sqlite3:pizzashop.db"

class  Product < ActiveRecord::Base
end

class  Order < ActiveRecord::Base
end


before do
#	@product = Product.all
	#@item = 0
end

get '/' do
# make  with order  @products = Product.order 'created_at DESC'
	@products = Product.all
	erb :index
end


get '/about' do
	erb :about
end


post '/cart' do

# get parameters list and parse it  
  @orders_input = params[:orders_input]
  @items = parse_orders_input @orders_input

# show msg about empty cart
  if @items.length == 0
    return erb "Cart is empty"
  end

# show items in cart  
  @items.each do |item|
    # id, cnt
    item[0] = Product.find(item[0])
  end

	erb :cart
end


post '/place_order' do
  @place_order = Order.new params[:order]
  if 
    @place_order.save 
    erb :order_placed
  else
    @error = @place_order.errors.full_messages.first
    erb :cart
  end
end


def parse_orders_input orders_input
  s1 = orders_input.split(/,/)

  arr = []

  s1.each do |x|
    s2 = x.split(/\=/)

    s3 = s2[0].split(/_/)

    id = s3[1]
    cnt = s2[1]

    arr2 = [id, cnt]

    arr.push arr2
  end

  return arr
end


get '/product/:id' do
 @product = Product.find(params[:id])
 erb :product
end

