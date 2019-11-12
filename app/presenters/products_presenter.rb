class ProductsPresenter
  def initialize(params)
    @params = params
  end

  def products
    @products ||= filter.call.paginate(page: @params[:page], per_page: 3).decorate
  end

  def filter
    @filter ||= ProductsFilter.new(filter_params)
  end

  private
  def filter_params
    @params[:filter] ? @params.require(:filter).permit(:query, :category_id) : {}
  end
end
