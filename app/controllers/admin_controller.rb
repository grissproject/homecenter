class AdminController < ApplicationController
  def index
    @admins = Admin.find(:all)
  end

  def edit
  end
end
