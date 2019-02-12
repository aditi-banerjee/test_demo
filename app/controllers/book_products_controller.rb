class BookProductsController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_book_product, only: [:show, :edit, :update, :destroy]

  # GET /book_products
  # GET /book_products.json
  def index
    @book_products = BookProduct.all
  end

  # GET /book_products/1
  # GET /book_products/1.json
  def show
  end

  # GET /book_products/new
  def new
    @book_product = BookProduct.new
  end

  # GET /book_products/1/edit
  def edit
  end

  # POST /book_products
  # POST /book_products.json
  def create
    @book_product = BookProduct.new(book_product_params)

    respond_to do |format|
      if @book_product.save
        format.html { redirect_to @book_product, notice: 'Book product was successfully created.' }
        format.json { render :show, status: :created, location: @book_product }
      else
        format.html { render :new }
        format.json { render json: @book_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_products/1
  # PATCH/PUT /book_products/1.json
  def update
    respond_to do |format|
      if @book_product.update(book_product_params)
        format.html { redirect_to @book_product, notice: 'Book product was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_product }
      else
        format.html { render :edit }
        format.json { render json: @book_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_products/1
  # DELETE /book_products/1.json
  def destroy
    @book_product.destroy
    respond_to do |format|
      format.html { redirect_to book_products_url, notice: 'Book product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_product
      @book_product = BookProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_product_params
      params.require(:book_product).permit(:quantity, :buyer_id, :product_id, :start_date, :end_date)
    end
end
