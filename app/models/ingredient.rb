class Ingredient < ActiveRecord::Base
  has_many :quantities
  has_many :recipes, :through => :quantities

  validates :name, :presence => true, :uniqueness => true
end
