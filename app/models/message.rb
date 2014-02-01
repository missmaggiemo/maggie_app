class Message < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+\@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  validates :content, presence: true, length: {minimum: 10}
  validates :checkbox, absence: true # { message: "You failed the human test. Please re-read the form and try again!" } # make sure that if the honeypot is checked the form is invalid
end
