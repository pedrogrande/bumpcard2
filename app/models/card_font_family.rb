class CardFontFamily < ActiveRecord::Base
  belongs_to :card
  attr_accessible :active, :card_font_family
end
