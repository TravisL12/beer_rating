class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer
  validates_presence_of :beer, :message => 'not found'
  validates_uniqueness_of :beer, :message => 'has already been entered'
end
