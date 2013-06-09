class TextSizesController < ApplicationController
  # GET /text_sizes
  # GET /text_sizes.json
  def index
    @text_sizes = TextSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text_sizes }
    end
  end

  # GET /text_sizes/1
  # GET /text_sizes/1.json
  def show
    @text_size = TextSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text_size }
    end
  end

  # GET /text_sizes/new
  # GET /text_sizes/new.json
  def new
    @text_size = TextSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text_size }
    end
  end

  # GET /text_sizes/1/edit
  def edit
    @text_size = TextSize.find(params[:id])
  end

  # POST /text_sizes
  # POST /text_sizes.json
  def create
    @text_size = TextSize.new(params[:text_size])

    respond_to do |format|
      if @text_size.save
        format.html { redirect_to @text_size, notice: 'Text size was successfully created.' }
        format.json { render json: @text_size, status: :created, location: @text_size }
      else
        format.html { render action: "new" }
        format.json { render json: @text_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text_sizes/1
  # PUT /text_sizes/1.json
  def update
    @text_size = TextSize.find(params[:id])

    respond_to do |format|
      if @text_size.update_attributes(params[:text_size])
        format.html { redirect_to @text_size, notice: 'Text size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_sizes/1
  # DELETE /text_sizes/1.json
  def destroy
    @text_size = TextSize.find(params[:id])
    @text_size.destroy

    respond_to do |format|
      format.html { redirect_to text_sizes_url }
      format.json { head :no_content }
    end
  end
end
