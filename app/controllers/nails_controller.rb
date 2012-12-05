class NailsController < ApplicationController
  # GET /nails
  # GET /nails.json
  def index
    @nails = Nail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nails }
    end
  end

  # GET /nails/1
  # GET /nails/1.json
  def show
    @nail = Nail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nail }
    end
  end

  # GET /nails/new
  # GET /nails/new.json
  def new
    @nail = Nail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nail }
    end
  end

  # GET /nails/1/edit
  def edit
    @nail = Nail.find(params[:id])
  end

  # POST /nails
  # POST /nails.json
  def create
    @nail = Nail.new(params[:nail])

    respond_to do |format|
      if @nail.save
        format.html { redirect_to @nail, notice: 'Nail was successfully created.' }
        format.json { render json: @nail, status: :created, location: @nail }
      else
        format.html { render action: "new" }
        format.json { render json: @nail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nails/1
  # PUT /nails/1.json
  def update
    @nail = Nail.find(params[:id])

    respond_to do |format|
      if @nail.update_attributes(params[:nail])
        format.html { redirect_to @nail, notice: 'Nail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nails/1
  # DELETE /nails/1.json
  def destroy
    @nail = Nail.find(params[:id])
    @nail.destroy

    respond_to do |format|
      format.html { redirect_to nails_url }
      format.json { head :no_content }
    end
  end
end
