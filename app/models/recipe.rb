class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients,

  :reject_if => :all_blank

  #proc {|ingredients|ingredient.empty?}


  # def ingredients_attributes=(ingredients_attributes)
  #   ingredients_attributes.values.each do |value|
  #     unless ingredient[:name].empty?
  #     self.ingredients<<Ingredient.find_or_create_by(name: ingredient[:name])
  # end

end
