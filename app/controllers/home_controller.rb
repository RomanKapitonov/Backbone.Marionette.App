class HomeController < ApplicationController
  def index
    gon.rabl(environment: Rails.env)
    @user ||= current_user
    gon.rabl template: 'app/views/users/show.json.rabl', as: "current_user"
  end
end