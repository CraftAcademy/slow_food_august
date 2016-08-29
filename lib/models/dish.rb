require 'data_mapper'

#This is the Table

class Dish
  include DataMapper::Resource

  property :id, Serial, key: true
  property :name, String
  property :price, Integer
  property :category, String
  validates_presence_of :name, :price, :category
end
