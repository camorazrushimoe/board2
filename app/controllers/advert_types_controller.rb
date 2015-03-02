class AdvertTypesController < ApplicationController
  before_action :set_advert_type, only: [:show, :edit, :update, :destroy]

  # GET /advert_types
  # GET /advert_types.json
  def index
    @advert_types = AdvertType.all
  end

  # GET /advert_types/1
  # GET /advert_types/1.json
  def show
  end

  # GET /advert_types/new
  def new
    @advert_type = AdvertType.new
  end

  # GET /advert_types/1/edit
  def edit
  end

  # POST /advert_types
  # POST /advert_types.json
  def create
    @advert_type = AdvertType.new(advert_type_params)

    respond_to do |format|
      if @advert_type.save
        format.html { redirect_to @advert_type, notice: 'Advert type was successfully created.' }
        format.json { render :show, status: :created, location: @advert_type }
      else
        format.html { render :new }
        format.json { render json: @advert_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advert_types/1
  # PATCH/PUT /advert_types/1.json
  def update
    respond_to do |format|
      if @advert_type.update(advert_type_params)
        format.html { redirect_to @advert_type, notice: 'Advert type was successfully updated.' }
        format.json { render :show, status: :ok, location: @advert_type }
      else
        format.html { render :edit }
        format.json { render json: @advert_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advert_types/1
  # DELETE /advert_types/1.json
  def destroy
    @advert_type.destroy
    respond_to do |format|
      format.html { redirect_to advert_types_url, notice: 'Advert type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert_type
      @advert_type = AdvertType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advert_type_params
      params.require(:advert_type).permit(:adv_type)
    end
end
