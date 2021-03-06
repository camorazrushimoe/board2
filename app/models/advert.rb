class Advert < ActiveRecord::Base
	extend Enumerize

	enumerize :status, :in => {:new_adv => 0, :draft => 1, :rejected => 2, :published => 3, :archive => 4}, scope: :having_status

	belongs_to :user
	belongs_to :category
	belongs_to :advert_type
	mount_uploader :image, ImageUploader
end
