class Card < ActiveRecord::Base
  belongs_to :user
  has_many :card_colors, :card_font_colors, :card_font_families, :card_images
end
