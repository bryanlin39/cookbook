class Recipe < ActiveRecord::Base
  has_many :materials
  has_many :ingredients, through: :materials
  has_many :labels 
  has_many :tags, through: :labels
end
