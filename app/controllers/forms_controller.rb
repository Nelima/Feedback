class FormsController < ApplicationController
  def index
    @forms = Form.all
  end
  
  def show
    @form = Form.find(params[:id])
  end
  
  def new
    @form = Form.new
  end
  
  def create
    @form = Form.new(params[:form])
    if @form.save
      redirect_to forms_path, :notice => "your feedback saved"
    else
      render "new"
    end
  end
  
end
