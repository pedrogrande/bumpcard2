class Logo < ActiveRecord::Base
  belongs_to :card
  attr_accessible :image
  mount_uploader :image, LogoUploader
end
