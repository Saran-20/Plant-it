# frozen_string_literal: true

class NaturesController < ApplicationController
  before_action :set_nature, only: %i[show edit update destroy]

  # GET /natures or /natures.json
  def index
    @natures = Nature.all
    @q = Nature.ransack(params[:q])
    @natures = @q.result(distinct: true)

  end

  # GET /natures/1 or /natures/1.json
  # def show
  # end

  # GET /natures/new
  def new
    @nature = Nature.new
  end
  

  def cart
    @cart = Cart.find_by(nature_id: params[:cart][:nature_id], user_id:current_user.id)
    if @cart
      @cart.increment(:quantity)
      @cart.save
      redirect_to cart_path
    else
     @cart = Cart.new(cart_params)
     if @cart.save
     redirect_to cart_path
     else
       render plain: 'failed'
     end
   end
def cart_params
  params.require(:cart).permit(:nature_id, :user_id)
end
  end

  def details
  end
  # GET /natures/1/edit
  def edit
  end

  # POST /natures or /natures.json
  def create
    @nature = Nature.new(nature_params)

    respond_to do |format|
      if @nature.save
        format.html { redirect_to nature_url(@nature), notice: 'Nature was successfully created.' }
        format.json { render :show, status: :created, location: @nature }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /natures/1 or /natures/1.json
  def update
    respond_to do |format|
      if @nature.update(nature_params)
        format.html { redirect_to nature_url(@nature), notice: 'Nature was successfully updated.' }
        format.json { render :show, status: :ok, location: @nature }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /natures/1 or /natures/1.json
  def destroy
    @nature.destroy

    respond_to do |format|
      format.html { redirect_to natures_url, notice: 'Nature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_nature
    @nature = Nature.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def nature_params
    params.require(:nature).permit(:name, :description, :category, :price, :image, :users_id)
  end


  def cart_params
    params.require(:cart).permit(:nature_id, :user_id)
  end


end
