class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :scores, inverse_of: :beer
end
