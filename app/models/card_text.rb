class CardText < ActiveRecord::Base
  belongs_to :card
  attr_accessible :active, :content
end
