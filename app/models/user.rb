class User < ApplicationRecord
  after_create :welcome_send
  validates :email, presence: true 
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
