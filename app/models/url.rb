class Url < ApplicationRecord
  validates :link, presence: true, uniqueness: true
  validates :shortlink, presence: true, uniqueness: true

  before_validation :generate_shortlink

  def to_param
    link
  end

  private

  def generate_shortlink
    shortlink = SecureRandom.uuid[0..5]} if shortlink.nil? || shortlink.empty?
  end
end
