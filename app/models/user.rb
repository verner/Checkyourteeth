class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password

  has_many :items

  validates_uniqueness_of :first_name
end
