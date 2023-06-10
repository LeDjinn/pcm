class PagesController < ApplicationController
  def home
  end

  def dashboard

  end

  def database
    @categories = Category.all
    
  end
end
