class HomeController < ApplicationController
  def index
    data = current_user.email
  end
end
