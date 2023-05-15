class User < ApplicationRecord
  has_secure_password

  before_save :email_downcase

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true

  private

  def email_downcase
    self.email = email.downcase
  end
end
