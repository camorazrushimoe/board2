class Category < ActiveRecord::Base
	has_many :adverts, inverse_of: :category
end
