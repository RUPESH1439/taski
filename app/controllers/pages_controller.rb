class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "My cool title"
  end

  def home
    @title = "Welcome to home!!!"
    @projects = Project.all
  end

  def error

  end
end
