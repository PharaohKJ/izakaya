class MeetupShopsController < ApplicationController
  before_action :set_meetup_shop, only: [:show, :edit, :update, :destroy]

  # GET /meetup_shops
  # GET /meetup_shops.json
  def index
    @meetup_shops = MeetupShop.all
  end

  # GET /meetup_shops/1
  # GET /meetup_shops/1.json
  def show
  end

  # GET /meetup_shops/new
  def new
    @meetup_shop = MeetupShop.new
  end

  # GET /meetup_shops/1/edit
  def edit
  end

  # POST /meetup_shops
  # POST /meetup_shops.json
  def create
    @meetup_shop = MeetupShop.new(meetup_shop_params)

    respond_to do |format|
      if @meetup_shop.save
        format.html { redirect_to @meetup_shop, notice: 'Meetup shop was successfully created.' }
        format.json { render :show, status: :created, location: @meetup_shop }
      else
        format.html { render :new }
        format.json { render json: @meetup_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetup_shops/1
  # PATCH/PUT /meetup_shops/1.json
  def update
    respond_to do |format|
      if @meetup_shop.update(meetup_shop_params)
        format.html { redirect_to @meetup_shop, notice: 'Meetup shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @meetup_shop }
      else
        format.html { render :edit }
        format.json { render json: @meetup_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetup_shops/1
  # DELETE /meetup_shops/1.json
  def destroy
    @meetup_shop.destroy
    respond_to do |format|
      format.html { redirect_to meetup_shops_url, notice: 'Meetup shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meetup_shop
      @meetup_shop = MeetupShop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meetup_shop_params
      params.require(:meetup_shop).permit(:meetup_id, :shop_id, :fix)
    end
end
