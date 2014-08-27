class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy, :view_picture]
  before_action :load_need, only: [:show, :edit, :update, :destroy, :new, :create]
  # GET /pictures
  # GET /pictures.json
  def index
    @pictures = Picture.all
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
  end

  def view_picture
    send_data @picture.image, type: @picture.imagetype, disposition: :inline
  end
  # GET /pictures/new
  def new
    @picture = Picture.new
  end

  # GET /pictures/1/edit
  def edit
  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = @need.pictures.create(picture_params)
    # @picture = Picture.new(picture_params)

    respond_to do |format|
      if @picture.save
        format.html { redirect_to need_path(@need), notice: 'Picture was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pictures/1
  # PATCH/PUT /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to need_path(@need), notice: 'Picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to need_path(@need), notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_need
      @need = Need.find(params[:need_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_params
      params.require(:picture).permit(:upfile, :need_id)
    end
end
