class PageController < ApplicationController
  def main
  end

  def total
    @hide_banner = true
    @all_beers = Beer.all

    @all_beers.each do |beer|
      beer.average = average_scores(beer)
    end

  end

end
