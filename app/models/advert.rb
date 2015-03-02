class Advert < ActiveRecord::Base
	
	enum status: [:new_adv, :draft, :rejected, :published, :archive]

	belongs_to :user
	belongs_to :category, inverse_of: :adverts
	mount_uploader :image, ImageUploader
end
