class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "I m Dev Prashad"
  end
end
