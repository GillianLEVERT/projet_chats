class JoinTableUserToCartsController < ApplicationController
  before_action :set_join_table_user_to_cart, only: %i[ show edit update destroy ]

  # GET /join_table_user_to_carts or /join_table_user_to_carts.json
  def index
    @join_table_user_to_carts = JoinTableUserToCart.all
  end

  # GET /join_table_user_to_carts/1 or /join_table_user_to_carts/1.json
  def show
  end

  # GET /join_table_user_to_carts/new
  def new
    @join_table_user_to_cart = JoinTableUserToCart.new
  end

  # GET /join_table_user_to_carts/1/edit
  def edit
  end

  # POST /join_table_user_to_carts or /join_table_user_to_carts.json
  def create
    @itemToAdd = JoinTableUserToCart.new(cart_id: current_user.cart.id, item_id: params[:id])

      if @itemToAdd.save
        redirect_to cart_path(current_user.cart.id)
      else

      end
  end

  # PATCH/PUT /join_table_user_to_carts/1 or /join_table_user_to_carts/1.json
  def update
    respond_to do |format|
      if @join_table_user_to_cart.update(join_table_user_to_cart_params)
        format.html { redirect_to join_table_user_to_cart_url(@join_table_user_to_cart), notice: "Join table user to cart was successfully updated." }
        format.json { render :show, status: :ok, location: @join_table_user_to_cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_table_user_to_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_user_to_carts/1 or /join_table_user_to_carts/1.json
  def destroy
    @join_table_user_to_cart.destroy

    respond_to do |format|
      format.html { redirect_to join_table_user_to_carts_url, notice: "Join table user to cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_user_to_cart
      @join_table_user_to_cart = JoinTableUserToCart.find(params[:id])
    end
end
