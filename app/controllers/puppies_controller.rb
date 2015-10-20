class PuppiesController < ApplicationController
  
  def index
    @puppies = Puppy.all.order(:id)
    render :index
  end

  def new
    @puppy = Puppy.new
  end
  
  def create
    @puppy = Puppy.new(puppy_params)
    
    if @puppy.save
      redirect_to root_path, flash: {notice: "You've successfully created a puppy"}
    else
      render :new
    end
  end

  def show
    @puppy = Puppy.find (params[:id])
  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def update
    @puppy = Puppy.find(params[:id])

    @puppy.update(puppy_params)
    if @puppy.update(puppy_params)
      redirect_to root_path, flash: {notice:"You've successfully update a puppy"}
    else
      render :edit
    end
  end

  def destroy
    @puppy = Puppy.find(params[:id])
    @puppy.destroy
       redirect_to root_path, flash: {alert: "You've successfully deleted a puppy"}
  end

  # def about

  # end

  # def contact

  private 

  def puppy_params
    params.require(:puppy).permit(:name,:age,:image_url, :bio)
  end
end