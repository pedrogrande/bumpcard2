class CardFontAlignmentsController < ApplicationController
  # GET /card_font_alignments
  # GET /card_font_alignments.json
  def index
    @card_font_alignments = CardFontAlignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @card_font_alignments }
    end
  end

  # GET /card_font_alignments/1
  # GET /card_font_alignments/1.json
  def show
    @card_font_alignment = CardFontAlignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card_font_alignment }
    end
  end

  # GET /card_font_alignments/new
  # GET /card_font_alignments/new.json
  def new
    @card_font_alignment = CardFontAlignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @card_font_alignment }
    end
  end

  # GET /card_font_alignments/1/edit
  def edit
    @card_font_alignment = CardFontAlignment.find(params[:id])
  end

  # POST /card_font_alignments
  # POST /card_font_alignments.json
  def create
    @card_font_alignment = CardFontAlignment.new(params[:card_font_alignment])

    respond_to do |format|
      if @card_font_alignment.save
        format.html { redirect_to @card_font_alignment, notice: 'Card font alignment was successfully created.' }
        format.json { render json: @card_font_alignment, status: :created, location: @card_font_alignment }
      else
        format.html { render action: "new" }
        format.json { render json: @card_font_alignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /card_font_alignments/1
  # PUT /card_font_alignments/1.json
  def update
    @card_font_alignment = CardFontAlignment.find(params[:id])

    respond_to do |format|
      if @card_font_alignment.update_attributes(params[:card_font_alignment])
        format.html { redirect_to @card_font_alignment, notice: 'Card font alignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card_font_alignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_font_alignments/1
  # DELETE /card_font_alignments/1.json
  def destroy
    @card_font_alignment = CardFontAlignment.find(params[:id])
    @card_font_alignment.destroy

    respond_to do |format|
      format.html { redirect_to card_font_alignments_url }
      format.json { head :no_content }
    end
  end
end
