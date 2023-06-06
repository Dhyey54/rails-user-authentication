class User < ApplicationRecord
  has_secure_password

  before_save :email_downcase

  validates :email, :username, uniqueness: true
  validates :password, confirmation: true, presence: true

  def secure_remember_token
    SecureRandom.base58(24)
  end

  private

  def email_downcase
    self.email = email.downcase
  end

end
