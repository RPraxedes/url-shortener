class Url < ApplicationRecord
  validates :link, presence: true, uniqueness: true
  validates :shortlink, presence: true, uniqueness: true

  before_validation :generate_shortlink

  def to_param
    shortlink
  end

  private

  def generate_shortlink
    self.shortlink = SecureRandom.uuid[0..5] if shortlink.blank?
  end
end
