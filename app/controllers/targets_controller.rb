class TargetsController < ApplicationController
  
  def index
    @targets = Target.all
  end

  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)

    if @target.save
      redirect_to @target
    else
    render 'new'
    end

  end

  def show
    @target = Target.find(params[:id])
  end

private
  def target_params
    params.require(:target).permit(:name, :intellink)
  end

end
