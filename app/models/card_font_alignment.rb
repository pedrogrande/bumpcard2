class CardFontAlignment < ActiveRecord::Base
  belongs_to :card
  attr_accessible :alignment
end
