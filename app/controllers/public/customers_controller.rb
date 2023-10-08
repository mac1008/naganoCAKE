class Public::CustomersController < ApplicationController
  def create
  end
  def show
    @customer = current_customer
  end
  def edit
    @customer = current_customer
  end
  def update
    @customer = current_customer
    customer.update(current_customer)
    redirect_to customer_path(current_customer)
  end
  def confirm
    customer = current_customer
  end
  def logical_delete
    customer = current_customer
  end
end
