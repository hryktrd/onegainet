class Helper < ActiveRecord::Base
  belongs_to :category
  has_many :schedules
end
