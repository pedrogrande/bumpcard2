class CardFontColorsController < ApplicationController
  # GET /card_font_colors
  # GET /card_font_colors.json
  def index
    @card_font_colors = CardFontColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @card_font_colors }
    end
  end

  # GET /card_font_colors/1
  # GET /card_font_colors/1.json
  def show
    @card_font_color = CardFontColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card_font_color }
    end
  end

  # GET /card_font_colors/new
  # GET /card_font_colors/new.json
  def new
    @card_font_color = CardFontColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @card_font_color }
    end
  end

  # GET /card_font_colors/1/edit
  def edit
    @card_font_color = CardFontColor.find(params[:id])
  end

  # POST /card_font_colors
  # POST /card_font_colors.json
  def create
    @card_font_color = CardFontColor.new(params[:card_font_color])

    respond_to do |format|
      if @card_font_color.save
        format.html { redirect_to @card_font_color, notice: 'Card font color was successfully created.' }
        format.json { render json: @card_font_color, status: :created, location: @card_font_color }
      else
        format.html { render action: "new" }
        format.json { render json: @card_font_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /card_font_colors/1
  # PUT /card_font_colors/1.json
  def update
    @card_font_color = CardFontColor.find(params[:id])

    respond_to do |format|
      if @card_font_color.update_attributes(params[:card_font_color])
        format.html { redirect_to @card_font_color, notice: 'Card font color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card_font_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_font_colors/1
  # DELETE /card_font_colors/1.json
  def destroy
    @card_font_color = CardFontColor.find(params[:id])
    @card_font_color.destroy

    respond_to do |format|
      format.html { redirect_to card_font_colors_url }
      format.json { head :no_content }
    end
  end
end
