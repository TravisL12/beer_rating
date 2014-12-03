class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]

  def index
    @beers = Beer.all
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @beer = Beer.new
  end

  def edit
    @user = User.find(params[:user_id])
    @beer = Beer.find(params[:id])
  end

  def create
    @beer = Beer.new(beer_params)
    @beer.user_id = params['user_id']

    respond_to do |format|
      if @beer.save
        format.html { redirect_to user_path(@beer.user_id), notice: 'Beer was successfully created.' }
        format.json { render :show, status: :created, location: @beer }
      else
        format.html { render :new }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @beer.update(beer_params)
        format.html { redirect_to user_path(@beer.user_id), notice: 'Beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer }
      else
        format.html { render :edit }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @beer.destroy
    respond_to do |format|
      format.html { redirect_to beers_url, notice: 'Beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_beer
      @beer = Beer.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :user_id)
    end
end
