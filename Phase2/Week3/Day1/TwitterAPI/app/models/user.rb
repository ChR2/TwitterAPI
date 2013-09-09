class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :username, uniqueness: true

  def self.authenticate(input_username, input_pass)
    @user = User.find_by_username(input_username) 
    @user.password == input_password
  end

end
