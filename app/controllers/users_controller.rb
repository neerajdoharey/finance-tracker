class UsersController < ApplicationController
  def my_profile
    @user_stocks = current_user.stocks
  end

  def my_friends

  end
end
