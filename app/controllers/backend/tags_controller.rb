module Backend
class TagsController < BackendController
  def index
    @tags = Tag.all
  end

  def new
  @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.new(tag_params)
      if @tag.save
      flash[:notice] = 'Creado'
        redirect_to backend_tags_path
    else
      flash.now[:alert] = 'Error'
      render :new
    end
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      flash.now[:notice] = 'Creado'
    else
      flash.now[:alert] = 'Error'
      render :edit
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash.now[:notice] = 'Eliminado'
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
 end
end
