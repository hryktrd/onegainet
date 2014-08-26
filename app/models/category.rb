class Category < ActiveRecord::Base
  has_many :needs
  has_many :helpers
end
