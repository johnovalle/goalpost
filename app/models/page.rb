class Page < ActiveRecord::Base
  belongs_to :user
  has_many :lists
end
