class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def show
    json_response(@user)
  end

  def destroy
    @user.destroy
    head :no_content
  end

  def look
    user = get_user(user_params)
    if user
      if user.authenticate(params[:password])
        json_response({ id: user.id, name: user.name, email: user.email })
      else json_response({ status: 'EXIST' })
      end
    else json_response({ status: 'NO EXIST' })
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

  def get_user(u_params)
    User.find_by(email: u_params[:email])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
