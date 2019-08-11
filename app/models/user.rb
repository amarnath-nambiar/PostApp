class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  has_many :comments

  after_create :send_welcome_mail

  def send_welcome_mail
    UserMailer.welcome_email(self).deliver_now
  end

  def full_name

  end
end
