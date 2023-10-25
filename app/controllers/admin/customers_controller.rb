class Admin::CustomersController < ApplicationController
  def index
    @customers = Customers.page(params[:page])
  end
  def show
    @customer = Customers.find(params[:id])
  end
  def edit
    @customer = Customers.find(params[:id])
  end
  def update
    customer = Customers.find(params[:id])
    customer.update
    redirect_to 
  end
end
