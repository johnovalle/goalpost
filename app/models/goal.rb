class Goal < ActiveRecord::Base
  belongs_to :list
  has_many :steps, dependent: :destroy
end
