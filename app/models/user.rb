class User < ActiveRecord::Base
  has_many :boodles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.create_with_password(email)
    password_length = 8
    password = Devise.friendly_token.first(password_length)
    User.create(email: email, password: password)
  end


end
