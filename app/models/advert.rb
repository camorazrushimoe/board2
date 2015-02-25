class Advert < ActiveRecord::Base
	belongs_to :users
	belongs_to :category
	mount_uploader :image, ImageUploader
end
