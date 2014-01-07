class EqsController < ApplicationController
  # GET /eqs
  # GET /eqs.json
  def index
    @eqs = Eq.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eqs }
    end
  end

  # GET /eqs/1
  # GET /eqs/1.json
  def show
    @eq = Eq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eq }
    end
  end

  # GET /eqs/new
  # GET /eqs/new.json
  def new
    @eq = Eq.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eq }
    end
  end

  # GET /eqs/1/edit
  def edit
    @eq = Eq.find(params[:id])
  end

  # POST /eqs
  # POST /eqs.json
  def create
    @eq = Eq.new(params[:eq])

    respond_to do |format|
      if @eq.save
        format.html { redirect_to @eq, notice: 'Eq was successfully created.' }
        format.json { render json: @eq, status: :created, location: @eq }
      else
        format.html { render action: "new" }
        format.json { render json: @eq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eqs/1
  # PUT /eqs/1.json
  def update
    @eq = Eq.find(params[:id])

    respond_to do |format|
      if @eq.update_attributes(params[:eq])
        format.html { redirect_to @eq, notice: 'Eq was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eqs/1
  # DELETE /eqs/1.json
  def destroy
    @eq = Eq.find(params[:id])
    @eq.destroy

    respond_to do |format|
      format.html { redirect_to eqs_url }
      format.json { head :no_content }
    end
  end
end
