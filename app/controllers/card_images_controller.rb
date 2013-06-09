class CardImagesController < ApplicationController
  # GET /card_images
  # GET /card_images.json
  def index
    @card_images = CardImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @card_images }
    end
  end

  # GET /card_images/1
  # GET /card_images/1.json
  def show
    @card_image = CardImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card_image }
    end
  end

  # GET /card_images/new
  # GET /card_images/new.json
  def new
    @card_image = CardImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @card_image }
    end
  end

  # GET /card_images/1/edit
  def edit
    @card_image = CardImage.find(params[:id])
  end

  # POST /card_images
  # POST /card_images.json
  def create
    @card_image = CardImage.new(params[:card_image])

    respond_to do |format|
      if @card_image.save
        format.html { redirect_to @card_image, notice: 'Card image was successfully created.' }
        format.json { render json: @card_image, status: :created, location: @card_image }
      else
        format.html { render action: "new" }
        format.json { render json: @card_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /card_images/1
  # PUT /card_images/1.json
  def update
    @card_image = CardImage.find(params[:id])

    respond_to do |format|
      if @card_image.update_attributes(params[:card_image])
        format.html { redirect_to @card_image, notice: 'Card image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_images/1
  # DELETE /card_images/1.json
  def destroy
    @card_image = CardImage.find(params[:id])
    @card_image.destroy

    respond_to do |format|
      format.html { redirect_to card_images_url }
      format.json { head :no_content }
    end
  end
end
