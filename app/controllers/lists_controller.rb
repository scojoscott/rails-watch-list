class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit]

  def index
    @list = List.all
   end

   def show
   end

   def new
    @list = List.new
   end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render "new"
    end
  end

  #  def edit
  #  end



  #  def update
  #   if @list.update(list_params)
  #      redirect_to @list, notice: 'List was successfully updated.'
  #    else
  #      render :edit
  #    end
  #  end


  #  def destroy
  #    @list.destroy
  #    redirect_to list_url, notice: 'List was successfully destroyed.'
  #  end

   private

   def set_list
     @list = List.find(params[:id])
   end

   def list_params
     params.require(:list).permit(:name)
   end

end
