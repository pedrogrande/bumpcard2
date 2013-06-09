class Card < ActiveRecord::Base
  belongs_to :user
  has_many :card_colors
  has_many :card_font_colors
  has_many :card_font_families
  has_many :card_images
end
