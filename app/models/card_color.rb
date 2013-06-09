class CardColor < ActiveRecord::Base
  belongs_to :card
  attr_accessible :active, :card_color
end
