class PageController < ApplicationController
  def main
  end

  def total
    @all_beers = Beer.all

    @all_beers.each do |beer|
      beer.average = average_scores(beer)
    end

  end

end
