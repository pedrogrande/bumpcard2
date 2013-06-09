class ProfilePicture < ActiveRecord::Base
  belongs_to :card
  attr_accessible :image
end
