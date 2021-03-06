class AdvertsController < ApplicationController
  before_action :set_advert, only: [:show, :edit, :update, :destroy]

  # GET /adverts
  # GET /adverts.json
  #def index
  #  @adverts = Advert.where(:status => "published")
  #  @categories = Category.all
  #  @q = Advert.ransack(params[:q])
  #  @adverts = @q.result(:distinct => true)
  #  @adverts = @adverts.paginate(:page => params[:page], :per_page => 5)
  #end

  def index
    @q = Advert.ransack(params[:q])
    @adverts = @q.result(:distinct => true)
    @adverts = @adverts.having_status(:published).paginate(:page => params[:page], :per_page => 5)
    @categories = Category.all
  end

  # GET /adverts/1
  # GET /adverts/1.json
  def show

  end

  # GET /adverts/new
  def new
    @advert = Advert.new
    img = Advert.new
    img = img.image
  end

  # GET /adverts/1/edit
  def edit
    @advstatus = "new_adv" || "archive"

  end

  # POST /adverts
  # POST /adverts.json
  def create
    @advert = Advert.new(advert_params)
    @advert.user_id = current_user.id

    respond_to do |format|
      if @advert.save
        format.html { redirect_to @advert, notice: 'Advert was successfully created.' }
        format.json { render :show, status: :created, location: @advert }
      else
        format.html { render :new }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adverts/1
  # PATCH/PUT /adverts/1.json
  def update
    respond_to do |format|
      if
        current_user.id != 2
        @advert.status = 'new_adv'
      else
      end

      if @advert.update(advert_params)
        format.html { redirect_to @advert, notice: 'Advert was successfully updated.' }
        format.json { render :show, status: :ok, location: @advert }
      else
        format.html { render :edit }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  def upload
    uploader = ImageUploader.new
  end


  def to_draft
    redirect_to :back
  end


  # DELETE /adverts/1
  # DELETE /adverts/1.json
  def destroy
    @advert.destroy
    respond_to do |format|
      format.html { redirect_to adverts_url, notice: 'Advert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert
      @advert = Advert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advert_params
      params.require(:advert).permit(:title, :description, :price, :user_id, :category_id, :image, :search, :status)
    end
end
