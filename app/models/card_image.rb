class CardImage < ActiveRecord::Base
  belongs_to :card
  attr_accessible :active, :image
end
