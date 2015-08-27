class Quantity < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe

  validates :quantity, :presence => true
end
