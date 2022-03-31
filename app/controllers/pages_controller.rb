class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "My cool title"
  end

  def home
    @title = "Welcome to home!!!"
    @projects = Project.all
    @table_headers = ['Title', 'Description', 'Percentage Completed', "Action"]
  end

  def error

  end
end
