class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :scores

  attr_accessor :average

end
