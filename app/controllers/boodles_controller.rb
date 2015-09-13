class BoodlesController < ApplicationController
  before_action :set_boodle, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, :except => [:index, :show]

  # GET /boodles
  # GET /boodles.json
  def index
    @boodles = Boodle.all
  end

  # GET /boodles/1
  # GET /boodles/1.json
  def show
  end


  # GET /boodles/new
  def new
    @boodle = User.next_boodle(current_user)
  end

  # GET /boodles/1/edit
  def edit
  end

  # POST /boodles
  # POST /boodles.json
  def create
    @boodle = Boodle.new(boodle_params)
    @boodle.user = current_user

    respond_to do |format|
      if @boodle.save
        format.html { redirect_to @boodle, notice: 'Boodle was successfully created.' }
        format.json { render :show, status: :created, location: @boodle }
      else
        format.html { render :new }
        format.json { render json: @boodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boodles/1
  # PATCH/PUT /boodles/1.json
  def update
    respond_to do |format|
      if @boodle.update(boodle_params)
        format.html { redirect_to @boodle, notice: 'Boodle was successfully updated.' }
        format.json { render :show, status: :ok, location: @boodle }
      else
        format.html { render :edit }
        format.json { render json: @boodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boodles/1
  # DELETE /boodles/1.json
  def destroy
    @boodle.destroy
    respond_to do |format|
      format.html { redirect_to boodles_url, notice: 'Boodle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boodle
      @boodle = Boodle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boodle_params
      params.require(:boodle).permit(:title, :data_url)
    end
    
    def temp_user
      User.find(1)
    end
end
