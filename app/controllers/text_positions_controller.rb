class TextPositionsController < ApplicationController
  # GET /text_positions
  # GET /text_positions.json
  def index
    @text_positions = TextPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text_positions }
    end
  end

  # GET /text_positions/1
  # GET /text_positions/1.json
  def show
    @text_position = TextPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text_position }
    end
  end

  # GET /text_positions/new
  # GET /text_positions/new.json
  def new
    @text_position = TextPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text_position }
    end
  end

  # GET /text_positions/1/edit
  def edit
    @text_position = TextPosition.find(params[:id])
  end

  # POST /text_positions
  # POST /text_positions.json
  def create
    @text_position = TextPosition.new(params[:text_position])

    respond_to do |format|
      if @text_position.save
        format.html { redirect_to @text_position, notice: 'Text position was successfully created.' }
        format.json { render json: @text_position, status: :created, location: @text_position }
      else
        format.html { render action: "new" }
        format.json { render json: @text_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text_positions/1
  # PUT /text_positions/1.json
  def update
    @text_position = TextPosition.find(params[:id])

    respond_to do |format|
      if @text_position.update_attributes(params[:text_position])
        format.html { redirect_to @text_position, notice: 'Text position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_positions/1
  # DELETE /text_positions/1.json
  def destroy
    @text_position = TextPosition.find(params[:id])
    @text_position.destroy

    respond_to do |format|
      format.html { redirect_to text_positions_url }
      format.json { head :no_content }
    end
  end
end
