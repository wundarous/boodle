class User < ActiveRecord::Base
  has_many :boodles
  has_many :selfies
  belongs_to :user_type

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.create_with_password(email)
    password_length = 8
    password = Devise.friendly_token.first(password_length)
    User.create(email: email, password: password)
  end

  def self.fake
    user = create_with_password("#{Devise.friendly_token.first(6)}@test.com")
    Boodle.create(user: user, title: Devise.friendly_token.first(6))
    Comment.create!(boodle: Boodle.first, :message => "sending you love")
    Comment.create!(boodle: Boodle.first, :message => "hahaha")
  end

  def self.next_boodle(user)
    count = user.boodles.count
    story_parts = StoryPart.all
    story_part = count < story_parts.length - 1 ? story_parts[count] : StoryPart.new
    Boodle.new(user: user, title: story_part.category, description: story_part.description)
  end

end
