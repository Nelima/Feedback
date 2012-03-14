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
    p "bye......."
     @user = Register.find(:first, :conditions => {:email => params[:email] ,:password => params[:password ]})
      p @user
      p "hello-------"
      p Register.attributes()
      # password = user[:password]
      #       p password
      #       p "bye---------"     
    #@user = Register.where(:email => params[:email],:password => params[:password])
     #p @user.to_a[0][:password]
     p params[:password]
    #     password =  @user.to_a[0][:password]
       if (password == params[:password])
             p "hi"
             render "details"
        end
    #     #   else
    #     render "login"
    #   end
  end
  
  
end
