class PageController < ApplicationController
  def main
  end

  def total
    @all_beers = Beer.all
  end

end
