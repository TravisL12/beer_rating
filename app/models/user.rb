class User < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :beers
  has_many :scores
end
