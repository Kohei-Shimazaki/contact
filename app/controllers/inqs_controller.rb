class InqsController < ApplicationController
  def new
    @inq = Inq.new
  end
  def create
    @inq = Inq.create(inq_params)
    if @inq.save
      redirect_to new_inq_path
    else
      render :new
    end
  end
  private
  def inq_params
    params.require(:inq).permit(:name, :email, :content)
  end
end
