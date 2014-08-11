class User < ActiveRecord::Base
  has_many :cards
  validates :email, :uniqueness => true
end
