class Advert < ActiveRecord::Base
	
	enum status: {new_adv: 0, draft: 1, rejected: 2, published: 3, archive: 4}

	belongs_to :user
	belongs_to :category, inverse_of: :adverts
	mount_uploader :image, ImageUploader
end
