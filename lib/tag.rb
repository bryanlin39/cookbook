class Tag < ActiveRecord::Base
  has_many :labels
  has_many :recipes, through: :labels
end
