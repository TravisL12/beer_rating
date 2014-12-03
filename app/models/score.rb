class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer
  validates_presence_of :beer, :message => 'not found'
  validates :beer_id, :uniqueness => { :scope => :user_id, message: 'has already been entered' }
end
