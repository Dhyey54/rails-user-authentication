class User < ApplicationRecord
  has_secure_password
  has_secure_token :remember_token

  before_save :email_downcase

  validates :email, :username, uniqueness: true
  validates :password, confirmation: true, presence: true

  private

  def email_downcase
    self.email = email.downcase
  end
end
