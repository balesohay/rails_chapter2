class FadminsController < ApplicationController
  before_action :set_fadmin, only: [:show, :edit, :update, :destroy]

  # GET /fadmins
  # GET /fadmins.json
  def index
    @fadmins = Fadmin.all
  end

  # GET /fadmins/1
  # GET /fadmins/1.json
  def show
  end

  # GET /fadmins/new
  def new
    @fadmin = Fadmin.new
  end

  # GET /fadmins/1/edit
  def edit
  end

  # POST /fadmins
  # POST /fadmins.json
  def create
    @fadmin = Fadmin.new(fadmin_params)

    respond_to do |format|
      if @fadmin.save
        format.html { redirect_to @fadmin, notice: 'Fadmin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fadmin }
      else
        format.html { render action: 'new' }
        format.json { render json: @fadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fadmins/1
  # PATCH/PUT /fadmins/1.json
  def update
    respond_to do |format|
      if @fadmin.update(fadmin_params)
        format.html { redirect_to @fadmin, notice: 'Fadmin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fadmins/1
  # DELETE /fadmins/1.json
  def destroy
    @fadmin.destroy
    respond_to do |format|
      format.html { redirect_to fadmins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fadmin
      @fadmin = Fadmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fadmin_params
      params.require(:fadmin).permit(:username, :password)
    end
end
