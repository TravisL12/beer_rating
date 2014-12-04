module PageHelper
  def average_scores(beer)
    sum = 0;
    count = beer.scores.size;
    beer.scores.each { |score| sum += score.rating }
    count > 2 ? "%.2g" % (sum/count).to_f : ''
  end
end
