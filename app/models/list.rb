class List < ActiveRecord::Base
  belongs_to :page
  has_many :goals
end
