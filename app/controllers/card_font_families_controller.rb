class CardFontFamiliesController < ApplicationController
  # GET /card_font_families
  # GET /card_font_families.json
  def index
    @card_font_families = CardFontFamily.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @card_font_families }
    end
  end

  # GET /card_font_families/1
  # GET /card_font_families/1.json
  def show
    @card_font_family = CardFontFamily.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card_font_family }
    end
  end

  # GET /card_font_families/new
  # GET /card_font_families/new.json
  def new
    @card_font_family = CardFontFamily.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @card_font_family }
    end
  end

  # GET /card_font_families/1/edit
  def edit
    @card_font_family = CardFontFamily.find(params[:id])
  end

  # POST /card_font_families
  # POST /card_font_families.json
  def create
    @card_font_family = CardFontFamily.new(params[:card_font_family])

    respond_to do |format|
      if @card_font_family.save
        format.html { redirect_to @card_font_family, notice: 'Card font family was successfully created.' }
        format.json { render json: @card_font_family, status: :created, location: @card_font_family }
      else
        format.html { render action: "new" }
        format.json { render json: @card_font_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /card_font_families/1
  # PUT /card_font_families/1.json
  def update
    @card_font_family = CardFontFamily.find(params[:id])

    respond_to do |format|
      if @card_font_family.update_attributes(params[:card_font_family])
        format.html { redirect_to @card_font_family, notice: 'Card font family was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card_font_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_font_families/1
  # DELETE /card_font_families/1.json
  def destroy
    @card_font_family = CardFontFamily.find(params[:id])
    @card_font_family.destroy

    respond_to do |format|
      format.html { redirect_to card_font_families_url }
      format.json { head :no_content }
    end
  end
end
