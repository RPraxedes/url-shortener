class Url < ApplicationRecord
  has_many :visitors, dependent: :destroy

  before_validation :generate_shortlink

  ROOT_URL = "localhost:3000".freeze
  validates :link, presence: true, uniqueness: true, allow_blank: false
  validates :shortlink, presence: true, uniqueness: true, allow_blank: false

  def to_param
    shortlink
  end

  private

  def generate_shortlink
    self.shortlink = SecureRandom.uuid[0..5] if shortlink.blank?
  end
end
