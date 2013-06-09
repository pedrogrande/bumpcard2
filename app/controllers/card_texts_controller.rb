class CardTextsController < ApplicationController
  # GET /card_texts
  # GET /card_texts.json
  def index
    @card_texts = CardText.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @card_texts }
    end
  end

  # GET /card_texts/1
  # GET /card_texts/1.json
  def show
    @card_text = CardText.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card_text }
    end
  end

  # GET /card_texts/new
  # GET /card_texts/new.json
  def new
    @card_text = CardText.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @card_text }
    end
  end

  # GET /card_texts/1/edit
  def edit
    @card_text = CardText.find(params[:id])
  end

  # POST /card_texts
  # POST /card_texts.json
  def create
    @card_text = CardText.new(params[:card_text])

    respond_to do |format|
      if @card_text.save
        format.html { redirect_to @card_text, notice: 'Card text was successfully created.' }
        format.json { render json: @card_text, status: :created, location: @card_text }
      else
        format.html { render action: "new" }
        format.json { render json: @card_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /card_texts/1
  # PUT /card_texts/1.json
  def update
    @card_text = CardText.find(params[:id])

    respond_to do |format|
      if @card_text.update_attributes(params[:card_text])
        format.html { redirect_to @card_text, notice: 'Card text was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_texts/1
  # DELETE /card_texts/1.json
  def destroy
    @card_text = CardText.find(params[:id])
    @card_text.destroy

    respond_to do |format|
      format.html { redirect_to card_texts_url }
      format.json { head :no_content }
    end
  end
end
