class User < ActiveRecord::Base
  has_many :jobs
  has_many :categories, through: :jobs

  # def newUser(userName)
  #   user = User.find_by(userName: userName)

  # end

end