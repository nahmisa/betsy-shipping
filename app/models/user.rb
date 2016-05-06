class User < ActiveRecord::Base
  has_secure_password

  has_many :orders
  has_many :products
  has_many :reviews


  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /@/}

  def self.log_in(username, password)
    somebody = self.find_by(username: username)
    somebody && somebody.authenticate(password)
  end

end