class Company < ActiveRecord::Base
  has_many :jobs
  has_many :perks
end
