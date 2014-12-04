class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :scores

  attr_accessor :average

  def name_with_id
    "(#{id}) #{name}"
  end
end
