class Recipe < ActiveRecord::Base
  has_many :quantities
  has_many :ingredients, :through => :quantities

  validates :name, :presence => true, :uniqueness => true
  #validates :cuisine_type, :presence => true
  #validates :cooking_method, :presence => true
  #validates :cooking_time, :presence => true
  #validates :source_url, :uniqueness => true

#take out later

end
