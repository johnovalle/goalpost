class Goal < ActiveRecord::Base
  belongs_to :list
  has_many :steps
end
