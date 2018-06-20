class SessionsController < ApplicationController
  include SessionsHelper

  def new; end

  def create
    user = Customer.find_by(email: params[:session][:email].downcase)
    if user
      log_in user
      redirect_to user
    else
      redirect_to login_path, notice: 'Invalid email/password combination'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end