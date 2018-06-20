class PagesController < ApplicationController

  def home
  @pizzas = Pizza.all
  end
end
