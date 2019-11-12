module Backend
 class ProductsController < BackendController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
  #  @presenter = ProductPresenter.new(params)
   @products = Product.paginate(page: params[:page], per_page: 5)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = 'Creado'
      redirect_to backend_products_path
    else
      flash.now[:alert] = 'Error'
      render :new
   end
  end

  def show
    @product = Product.find(params[:id]).decorate
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:notice] = 'Éxito'
      redirect_to [:backend, @product]
    else
      flash.now[:alert] = 'Error'
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = 'Eliminado'
    redirect_to backend_products_path
  end

  private
  def product_params
    ## strong parameters
    params.require(:product).permit(
      :name,
      :internalCode,
      :category_id,
      :tag_id,
      :praice,
      :cost,
      :description,
      :activo,
      :image
    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
 end
end
