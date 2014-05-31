class WhoIsController < ApplicationController
  #before_filter :authenticate
  #protected
   # def authenticate
    #  authenticate_or_request_with_http_basic do |username, password|
     # username == "admin" && password =="test"
    #end
  #end

  before_action :set_who_i, only: [:show, :edit, :update, :destroy]

  # GET /who_is
  # GET /who_is.json
  def index
    @who_is = WhoI.all
  end

  # GET /who_is/1
  # GET /who_is/1.json
  def show
  end

  # GET /who_is/new
  def new
    @who_i = WhoI.new
  end

  # GET /who_is/1/edit
  def edit
  end

  # POST /who_is
  # POST /who_is.json
  def create
    @who_i = WhoI.new(who_i_params)

    respond_to do |format|
      if @who_i.save
        format.html { redirect_to @who_i, notice: 'Who i was successfully created.' }
        format.json { render action: 'show', status: :created, location: @who_i }
      else
        format.html { render action: 'new' }
        format.json { render json: @who_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /who_is/1
  # PATCH/PUT /who_is/1.json
  def update
    respond_to do |format|
      if @who_i.update(who_i_params)
        format.html { redirect_to @who_i, notice: 'Who i was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @who_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /who_is/1
  # DELETE /who_is/1.json
  def destroy
    @who_i.destroy
    respond_to do |format|
      format.html { redirect_to who_is_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_who_i
      @who_i = WhoI.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def who_i_params
      params.require(:who_i).permit(:username, :password)
    end
end
