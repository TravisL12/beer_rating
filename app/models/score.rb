class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer
  validates_presence_of :beer, :message => 'not found'
  validates :beer_id, :uniqueness => { :scope => :user_id, message: 'has already been entered' }
  validates :rating, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5, message: 'should be between 0 and 5' }

end
