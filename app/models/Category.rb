class Category < ActiveRecord::Base
  has_many :jobs
  has_many :users, through: :jobs
end