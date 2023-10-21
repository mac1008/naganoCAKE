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
  end
  def logical_delete
    customer = current_customer
    customer.update_attribute(name, False)
    redirect_to new_customer_registration_path
  end

end
