class Goal < ActiveRecord::Base
  belongs_to :page
  has_many :steps
end
