class OwnProductsController < ApplicationController
  before_action :set_own_product, only: [:show, :edit, :update, :destroy]

  # GET /own_products
  # GET /own_products.json
  def index
    @own_products = OwnProduct.all
  end

  # GET /own_products/1
  # GET /own_products/1.json
  def show
  end

  # GET /own_products/new
  def new
    @own_product = OwnProduct.new
  end

  # GET /own_products/1/edit
  def edit
  end

  # POST /own_products
  # POST /own_products.json
  def create
    @own_product = OwnProduct.new(own_product_params)

    respond_to do |format|
      if @own_product.save
        format.html { redirect_to @own_product, notice: 'Own product was successfully created.' }
        format.json { render :show, status: :created, location: @own_product }
      else
        format.html { render :new }
        format.json { render json: @own_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /own_products/1
  # PATCH/PUT /own_products/1.json
  def update
    respond_to do |format|
      if @own_product.update(own_product_params)
        format.html { redirect_to @own_product, notice: 'Own product was successfully updated.' }
        format.json { render :show, status: :ok, location: @own_product }
      else
        format.html { render :edit }
        format.json { render json: @own_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /own_products/1
  # DELETE /own_products/1.json
  def destroy
    @own_product.destroy
    respond_to do |format|
      format.html { redirect_to own_products_url, notice: 'Own product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_own_product
      @own_product = OwnProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def own_product_params
      params.require(:own_product).permit(:product_id, :user_id, :count, :memo)
    end
end
