class Ingredient < ActiveRecord::Base
  has_many :materials
  has_many :recipes, through: :materials

  def self.dup_check(name)
    check = 0
    #potential regex rules for robustness
    Ingredient.all.each do |ingredient|
      if ingredient.name==name
        check = ingredient.id
      end
    end
    check
  end
end
