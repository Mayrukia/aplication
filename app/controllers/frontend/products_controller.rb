module Frontend
 class ProductsController < FrontendController
  def index
    @presenter = ProductsPresenter.new(params)
  end

  def show
    @product = Product.find(params[:id]).decorate
  end

  private
  def product_params
    ## strong parameters
    params.require(:product_filter).permit(:name,:category_id,:image)
  end
 end
end
