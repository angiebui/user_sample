class User < ActiveRecord::Base
  attr_accessible :username, :email, :password

  validates_presence_of :username
end
