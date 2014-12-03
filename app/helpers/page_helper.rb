module PageHelper
  def average_scores(beer)
    sum = 0;
    count = 0;
    beer.scores.each { |score| sum += score.rating; count += 1 }
    avg = count > 0 ? (sum/count).to_f : 0
    "%.2g" % avg
  end
end
