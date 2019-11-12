module Backend
 class CategoriesController < BackendController
  before_action :set_category, only: [:edit, :update, :destroy]
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Creado'
      redirect_to backend_categories_path
    else
      flash.now[:alert] = 'Error'
      render :new
    end
  end

  def update
    if @category.update(category_params)
      flash[:notice] = 'Creado'
      redirect_to backend_categories_path
    else
      flash.now[:alert] = 'Error'
      render :edit
    end
  end

  def destroy
    @category.destroy
    flash[:notice] = 'Eliminado'
    redirect_to backend_categories_path
  end

  def set_category
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
 end
end
