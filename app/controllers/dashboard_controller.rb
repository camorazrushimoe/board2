class DashboardController < ApplicationController


	def index
		@adverts = Advert.all
	    @categories = Category.all
    	@q = Advert.ransack(params[:q])
    	@adverts = @q.result(:distinct => true)
    	@adverts = @adverts.paginate(:page => params[:page], :per_page => 10)
	end


end
