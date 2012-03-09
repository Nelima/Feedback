class RegistersController < ApplicationController
  def index
    @register = Register.all
  end
  def new
    @register = Register.new
  end
  
  def show
    @register = Register.find(params[:id])
  end
  
  def create
    @register = Register.new(params[:register])
    if @register.save
      redirect_to registers_path, :notice => "you are registered"
    else
      render "new"
    end
  end
  def login
    
    p "bye................"
  end
  
end
